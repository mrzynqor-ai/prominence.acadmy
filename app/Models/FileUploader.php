<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use Image, DB;
use Illuminate\Support\Facades\Session;

class FileUploader extends Model
{
    use HasFactory;

    public static function upload($uploaded_file, $upload_to, $width = null, $height = null, $optimized_width = 250, $optimized_height = null)
    {
        Log::info('=== FileUploader::upload STARTED ===');
        Log::info('upload_to param: ' . $upload_to);
        Log::info('width: ' . ($width ?? 'null'));

        if (!$uploaded_file) {
            Log::warning('No uploaded file provided');
            return;
        }

        Log::info('Uploaded file exists, temp path: ' . $uploaded_file->path());
        Log::info('File exists at temp: ' . (file_exists($uploaded_file->path()) ? 'YES' : 'NO'));

        if (!extension_loaded('fileinfo')) {
            Session::flash('error', get_phrase('Please enable fileinfo extension on your server.'));
            return;
        }

        if (!extension_loaded('exif')) {
            Session::flash('error', get_phrase('Please enable exif extension on your server.'));
            return;
        }

        if (!str_contains($upload_to, 'http') && str_contains($upload_to, 'public')) {
            $upload_to = str_replace('public/', "", $upload_to);
        }

        //Add public path
        $upload_path = $upload_to;
        $upload_to = public_path($upload_to);

        Log::info('After public_path: ' . $upload_to);
        Log::info('is_dir check: ' . (is_dir($upload_to) ? 'YES' : 'NO'));

        if (is_dir($upload_to)) {
            $file_name = time() . '-' . random(30) . '.' . $uploaded_file->extension();
            $upload_path = $upload_path . '/' . $file_name;
            Log::info('Directory exists, generated filename: ' . $file_name);
        } else {
            $uploaded_path_arr = explode('/', $upload_to);
            $file_name = end($uploaded_path_arr);
            $upload_to = str_replace('/' . $file_name, "", $upload_to);
            Log::info('File path mode, extracted filename: ' . $file_name);
            Log::info('Directory path: ' . $upload_to);
            if (!is_dir($upload_to)) {
                Log::info('Creating directory: ' . $upload_to);
                mkdir($upload_to, 0755, true);
            }
        }

        $final_path = $upload_to . '/' . $file_name;
        Log::info('Final save path: ' . $final_path);

        if ($width == null) {
            Log::info('No resize needed, moving file directly');
            $uploaded_file->move($upload_to, $file_name);
            Log::info('File moved, exists: ' . (file_exists($final_path) ? 'YES' : 'NO'));
        } else {
            try {
                Log::info('Starting Image::make resize');
                $img = Image::make($uploaded_file->path());
                Log::info('Image loaded successfully');

                $img->orientate()->resize($width, $height, function ($constraint) {
                    $constraint->upsize();
                    $constraint->aspectRatio();
                });
                Log::info('Image resized, saving to: ' . $final_path);

                $img->save($final_path);
                Log::info('Image saved, file exists: ' . (file_exists($final_path) ? 'YES' : 'NO'));

                //Ultra Image optimization
                $optimized_path = $upload_to . '/optimized';
                if (is_dir($optimized_path)) {
                    Image::make($uploaded_file->path())->orientate()->resize($optimized_width, $optimized_height, function ($constraint) {
                        $constraint->upsize();
                        $constraint->aspectRatio();
                    })->save($optimized_path . '/' . $file_name);
                }
            } catch (\Exception $e) {
                Log::error('FileUploader EXCEPTION: ' . $e->getMessage());
                Log::error('Exception trace: ' . $e->getTraceAsString());
                Session::flash('error', 'Image upload failed: ' . $e->getMessage());
                return;
            }
        }

        Log::info('=== FileUploader::upload COMPLETED, returning: ' . $upload_path);
        return $upload_path;
    }
}
