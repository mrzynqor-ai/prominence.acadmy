<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Image, DB;
use Illuminate\Support\Facades\Session;

class FileUploader extends Model
{
    use HasFactory;

    public static function upload($uploaded_file, $upload_to, $width = null, $height = null, $optimized_width = 250, $optimized_height = null)
    {
        if (!$uploaded_file)
            return;

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

        if (is_dir($upload_to)) {
            $file_name = time() . '-' . random(30) . '.' . $uploaded_file->extension();
            $upload_path = $upload_path . '/' . $file_name;
        } else {
            $uploaded_path_arr = explode('/', $upload_to);
            $file_name = end($uploaded_path_arr);
            $upload_to = str_replace('/' . $file_name, "", $upload_to);
            if (!is_dir($upload_to)) {
                mkdir($upload_to, 0755, true);
            }
        }

        if ($width == null) {
            $uploaded_file->move($upload_to, $file_name);
        } else {
            try {
                //Image optimization
                Image::make($uploaded_file->path())->orientate()->resize($width, $height, function ($constraint) {
                    $constraint->upsize();
                    $constraint->aspectRatio();
                })->save($upload_to . '/' . $file_name);

                //Ultra Image optimization
                $optimized_path = $upload_to . '/optimized';
                if (is_dir($optimized_path)) {
                    Image::make($uploaded_file->path())->orientate()->resize($optimized_width, $optimized_height, function ($constraint) {
                        $constraint->upsize();
                        $constraint->aspectRatio();
                    })->save($optimized_path . '/' . $file_name);
                }
            } catch (\Exception $e) {
                Session::flash('error', 'Image upload failed: ' . $e->getMessage());
                return;
            }
        }

        return $upload_path;
    }
}
