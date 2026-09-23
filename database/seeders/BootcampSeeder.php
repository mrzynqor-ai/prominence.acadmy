<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\BootcampCategory;
use App\Models\Bootcamp;
use App\Models\BootcampModule;
use App\Models\BootcampLiveClass;
use App\Models\BootcampResource;
use App\Models\User;
use Illuminate\Support\Str;

class BootcampSeeder extends Seeder
{
    /**
     * Seed bootcamps, modules, live classes, and resources.
     */
    public function run(): void
    {
        // 1. Fetch instructor user
        $instructor = User::where('role', 'admin')->orWhere('role', 'instructor')->first() ?? User::first();
        $userId = $instructor ? $instructor->id : 1;

        // 2. Create Categories
        $categoriesData = [
            'إدارة الأعمال والرئاسة التنفيذية (MBA & Leadership)',
            'الذكاء الاصطناعي وعلوم البيانات (AI & Data Science)',
            'التسويق الرقمي وإدارة النمو (Digital Marketing & Growth)',
            'إدارة الموارد البشرية والتطوير (HR & Organizational Dev)',
            'المالية والاستثمار المصرفي (Finance & Fintech)',
            'إدارة المشاريع الاحترافية (PMP & Agile Management)',
        ];

        $categoryIds = [];
        foreach ($categoriesData as $catTitle) {
            $slug = Str::slug($catTitle);
            $cat = BootcampCategory::firstOrCreate(
                ['slug' => $slug],
                ['title' => $catTitle]
            );
            $categoryIds[] = $cat->id;
        }

        $now = time();

        // 3. Define Diploma Programs Data
        $diplomas = [
            [
                'title' => 'دبلومه الماجستير المهني في إدارة الأعمال والتخطيط الاستراتيجي Professional Master\'s Diploma in Executive MBA & Strategic Leadership',
                'short_description' => 'برنامج أكاديمي مهني متكامل لتمكين القياديين والمدراء من أدوات التخطيط الاستراتيجي وصناعة القرار.',
                'description' => 'تمنحك دبلومه الماجستير المهني في إدارة الأعمال المعرفة والمهارات العملية للقيادة والمنافسة في الأسواق العالمية، مع التركيز على التفكير الاستراتيجي والابتكار المؤسسي.',
                'price' => 1200.00,
                'discount_flag' => 1,
                'discounted_price' => 300.00,
                'category_id' => $categoryIds[0] ?? 1,
                'outcomes' => json_encode(['صياغة واستراتيجية التحول الرقمي', 'إدارة الفرق عالية الأداء والابتكار', 'التحليل المالي والإداري المتقدم', 'صنع القرارات الحاسمة والمخاطر']),
                'requirements' => json_encode(['مؤهل أكاديمي عالي أو خبرة عمل إدارية', 'الرغبة في التطور القيادي']),
                'faqs' => json_encode([
                    ['question' => 'هل الشهادة معتمدة دولياً؟', 'answer' => 'نعم، الشهادة صادرة ومعتمدة أكاديمياً ومهنياً.'],
                    ['question' => 'كيف يتم حضور المحاضرات المباشرة؟', 'answer' => 'تبث المحاضرات مباشرة عبر القاعة الأكاديمية التفاعلية، وتتاح مسجلة في سجل المحاضرات فور انتهائها.']
                ]),
                'modules' => [
                    [
                        'title' => 'الموديول الأول: التفكير والتخطيط الاستراتيجي للمؤسسات',
                        'classes' => [
                            ['title' => 'المحاضرة 1: مهارات القيادة وصياغة الرؤية الاستراتيجية', 'start_offset' => -3600, 'duration' => 7200],
                            ['title' => 'المحاضرة 2: تحليل البيئة الداخلية والخارجية (SWOT & PESTEL Analysis)', 'start_offset' => 86400 * 2, 'duration' => 7200],
                        ],
                        'records' => [
                            ['title' => 'سجل المحاضرة التعريفية بالتخطيط الاستراتيجي', 'type' => 'record', 'file' => 'https://www.w3schools.com/html/mov_bbb.mp4'],
                            ['title' => 'حقيبة التخطيط الاستراتيجي ونماذج التحليل.pdf', 'type' => 'resource', 'file' => 'strategic_planning_pack.pdf']
                        ]
                    ],
                    [
                        'title' => 'الموديول الثاني: الإدارة المالية وقرارات الاستثمار الحيوية',
                        'classes' => [
                            ['title' => 'المحاضرة 1: قراءة وتحليل القوائم المالية للمدراء التنفيذيين', 'start_offset' => 86400 * 7, 'duration' => 7200],
                            ['title' => 'المحاضرة 2: ميزانيات التوسع وتقييم المشاريع الاستثمارية', 'start_offset' => 86400 * 10, 'duration' => 7200],
                        ],
                        'records' => [
                            ['title' => 'تسجيل ورشة عمل التحليل المالي والميزانيات', 'type' => 'record', 'file' => 'https://www.w3schools.com/html/mov_bbb.mp4'],
                            ['title' => 'دليل التحليل المالي والإداري للمؤسسات.pdf', 'type' => 'resource', 'file' => 'financial_analysis_guide.pdf']
                        ]
                    ]
                ]
            ],
            [
                'title' => 'دبلومه الماجستير المهني في الذكاء الاصطناعي وعلوم البيانات Professional Master\'s Diploma in AI & Data Science',
                'short_description' => 'احترف تطبيق خوارزميات الذكاء الاصطناعي وتطوير الحلول الذكية والتنبؤية للمؤسسات والشركات.',
                'description' => 'تغطي هذه الدبلومة المهنية تقنيات تعلم الآلة (Machine Learning)، الذكاء الاصطناعي التوليدي (Generative AI)، وتطبيقات تعظيم القيمة التجارية من البيانات الضخمة.',
                'price' => 1500.00,
                'discount_flag' => 1,
                'discounted_price' => 400.00,
                'category_id' => $categoryIds[1] ?? 1,
                'outcomes' => json_encode(['بناء نماذج تعلم الآلة التنبؤية', 'تحليل البيانات الضخمة باستخدام Python & SQL', 'تطبيق تقنيات Generative AI وسلاسل LLMs']),
                'requirements' => json_encode(['معرفة أساسية بأساسيات البرمجة أو علوم البيانات']),
                'faqs' => json_encode([
                    ['question' => 'هل التطبيق عملي على مشاريع واقعية؟', 'answer' => 'نعم، الدبلومة قائمة على مشاريع وتطبيقات عمل حقيقية.']
                ]),
                'modules' => [
                    [
                        'title' => 'الموديول الأول: أساسيات نماذج الذكاء الاصطناعي وتعلم الآلة',
                        'classes' => [
                            ['title' => 'المحاضرة 1: مقدمة إلى الذكاء الاصطناعي وتطبيقاته التجارية', 'start_offset' => -1800, 'duration' => 7200],
                            ['title' => 'المحاضرة 2: بناء النماذج التنبؤية وتنظيف البيانات المتقدم', 'start_offset' => 86400 * 4, 'duration' => 7200],
                        ],
                        'records' => [
                            ['title' => 'سجل محاضرة بناء N-gram Models في الذكاء الاصطناعي', 'type' => 'record', 'file' => 'https://www.w3schools.com/html/mov_bbb.mp4'],
                            ['title' => 'ملف الأكواد المصدري وتدريبات Python.zip', 'type' => 'resource', 'file' => 'python_ai_lab.zip']
                        ]
                    ]
                ]
            ],
            [
                'title' => 'دبلومه الماجستير المهني في التسويق الرقمي وقيادة النمو Professional Master\'s Diploma in Digital Marketing & Growth Hacking',
                'short_description' => 'استراتيجيات التسويق الرقمي الحديثة، إدارة الحملات الإعلانية المدفوعة، وبناء العلامات التجارية.',
                'description' => 'تعلم كيف تقود استراتيجية التسويق الرقمي للشركات الناشئة والمؤسسات الكبرى عبر محركات البحث، منصات التواصل الاجتماعي، وتحليل سلوك المستهلك.',
                'price' => 950.00,
                'discount_flag' => 0,
                'discounted_price' => 0.00,
                'category_id' => $categoryIds[2] ?? 1,
                'outcomes' => json_encode(['إدارة حملات Google & Meta Ads المتقدمة', 'تحسين محركات البحث SEO والأداء', 'بناء قمع المبيعات Conversion Funnels']),
                'requirements' => json_encode(['شغف بالتسويق وتطوير الأعمال']),
                'faqs' => json_encode([]),
                'modules' => [
                    [
                        'title' => 'الموديول الأول: استراتيجيات التسويق عبر وسائل التواصل والحملات المدفوعة',
                        'classes' => [
                            ['title' => 'المحاضرة 1: إطلاق إعلانات فيسبوك وانستغرام المتقدمة واستيعاب الجمهور', 'start_offset' => 86400 * 1, 'duration' => 7200],
                            ['title' => 'المحاضرة 2: تحسين معدلات التحويل وتجربة المستخدم Funnels', 'start_offset' => 86400 * 5, 'duration' => 7200],
                        ],
                        'records' => [
                            ['title' => 'سجل محاضرة إطلاق استراتيجيات الإعلانات المدفوعة', 'type' => 'record', 'file' => 'https://www.w3schools.com/html/mov_bbb.mp4']
                        ]
                    ]
                ]
            ],
            [
                'title' => 'دبلومه الماجستير المهني في القيادة وإدارة الموارد البشرية Professional Master\'s Diploma in HR & Talent Management',
                'short_description' => 'تطوير رأس المال البشري، إدارة المواهب، وتصميم أنظمة المكافآت والأداء الإداري.',
                'description' => 'برنامج متخصص يوفر الأدوات والخبرات في إعادة هيكلة المؤسسات، جذب الكفاءات، وإدارة الثقافة التنظيمية بنجاح.',
                'price' => 1100.00,
                'discount_flag' => 1,
                'discounted_price' => 250.00,
                'category_id' => $categoryIds[3] ?? 1,
                'outcomes' => json_encode(['تصميم هياكل الأجور والمكافآت الحديثة', 'إدارة تقييم الأداء والمؤشرات KPIs', 'استقطاب وإبقاء الكفاءات العالية']),
                'requirements' => json_encode(['درجة البكالوريوس أو خبرة في التعامل مع الأفراد']),
                'faqs' => json_encode([]),
                'modules' => [
                    [
                        'title' => 'الموديول الأول: استقطاب وإدارة أداء الكفاءات',
                        'classes' => [
                            ['title' => 'المحاضرة 1: الاستراتيجيات الحديثة لإجراء المقابلات واختبارات الكفاءة', 'start_offset' => 86400 * 3, 'duration' => 7200],
                        ],
                        'records' => [
                            ['title' => 'حقيبة الموارد البشرية ونماذج التقييم.pdf', 'type' => 'resource', 'file' => 'hr_evaluation_pack.pdf']
                        ]
                    ]
                ]
            ],
            [
                'title' => 'دبلومه الماجستير المهني في إدارة المشاريع الاحترافية Professional Master\'s Diploma in Project Management (PMP & Agile)',
                'short_description' => 'منهجيات إدارة المشاريع الدولية Agile & PMP وضمان تسليم المشاريع ضمن الميزانية والجدول الزمني.',
                'description' => 'اكتسب أعلى الخبرات المعتمدة في التخطيط للمشاريع المعقدة، إدارة المخاطر، والقيادة المرنة للفرق باستخدام Scrum وKanban.',
                'price' => 1350.00,
                'discount_flag' => 1,
                'discounted_price' => 350.00,
                'category_id' => $categoryIds[5] ?? 1,
                'outcomes' => json_encode(['إتقان دليل PMP® الإصدار السابع', 'إدارة نطاق المشروع الجدول الزمني والتكلفة', 'تطبيق منهجيات Agile & Scrum']),
                'requirements' => json_encode(['خبرة مشاريع أو رغبة في احتراف إدارة المشاريع']),
                'faqs' => json_encode([]),
                'modules' => [
                    [
                        'title' => 'الموديول الأول: أساسيات وإطار عمل إدارة المشاريع PMP',
                        'classes' => [
                            ['title' => 'المحاضرة 1: تحديد نطاق المشروع وهيكل تجزئة العمل WBS', 'start_offset' => 86400 * 2, 'duration' => 7200],
                            ['title' => 'المحاضرة 2: إدارة المخاطر والتكلفة للمشاريع الكبرى', 'start_offset' => 86400 * 6, 'duration' => 7200],
                        ],
                        'records' => [
                            ['title' => 'سجل المحاضرة التمهيدية لمنهجية PMP', 'type' => 'record', 'file' => 'https://www.w3schools.com/html/mov_bbb.mp4'],
                            ['title' => 'قوالب ونماذج إدارة المشاريع PMP.docx', 'type' => 'resource', 'file' => 'pmp_templates.docx']
                        ]
                    ]
                ]
            ]
        ];

        // 4. Insert Programs, Modules, Classes, and Resources
        foreach ($diplomas as $index => $data) {
            $slug = Str::slug($data['title']);

            $bootcamp = Bootcamp::updateOrCreate(
                ['slug' => $slug],
                [
                    'user_id' => $userId,
                    'title' => $data['title'],
                    'category_id' => $data['category_id'],
                    'short_description' => $data['short_description'],
                    'description' => $data['description'],
                    'is_paid' => $data['price'] > 0 ? 1 : 0,
                    'price' => $data['price'],
                    'discount_flag' => $data['discount_flag'],
                    'discounted_price' => $data['discounted_price'],
                    'publish_date' => $now - ($index * 86400 * 5),
                    'thumbnail' => 'uploads/bootcamp/thumbnail/sample_' . ($index + 1) . '.jpg',
                    'faqs' => $data['faqs'],
                    'requirements' => $data['requirements'],
                    'outcomes' => $data['outcomes'],
                    'meta_keywords' => 'ماجستير, دبلومة مهنية, bootcamp, ' . $data['title'],
                    'meta_description' => $data['short_description'],
                    'status' => 1,
                ]
            );

            // Add modules for this bootcamp
            foreach ($data['modules'] as $modSort => $modData) {
                $modPublish = $now + ($modSort * 86400 * 7);
                $modExpiry  = $now + (($modSort + 4) * 86400 * 7);

                $module = BootcampModule::create([
                    'bootcamp_id' => $bootcamp->id,
                    'title' => $modData['title'],
                    'publish_date' => $modPublish,
                    'expiry_date' => $modExpiry,
                    'restriction' => 0,
                    'sort' => $modSort + 1,
                ]);

                // Live Classes
                foreach ($modData['classes'] as $clsSort => $clsData) {
                    $startTime = $now + $clsData['start_offset'];
                    $endTime   = $startTime + $clsData['duration'];

                    BootcampLiveClass::create([
                        'module_id' => $module->id,
                        'title' => $clsData['title'],
                        'slug' => Str::slug($clsData['title']),
                        'description' => 'محاضرة تفاعلية أونلاين مباشرة عبر القاعة الأكاديمية.',
                        'start_time' => $startTime,
                        'end_time' => $endTime,
                        'sort' => $clsSort + 1,
                        'status' => 1,
                        'provider' => 'zoom',
                        'joining_data' => json_encode([
                            'zoom_link' => 'https://zoom.us/j/1234567890',
                            'start_url' => 'https://zoom.us/s/1234567890',
                            'meeting_id' => '123-456-7890'
                        ]),
                        'force_stop' => 0,
                    ]);
                }

                // Records and Resources
                foreach ($modData['records'] as $recData) {
                    BootcampResource::create([
                        'module_id' => $module->id,
                        'title' => $recData['title'],
                        'upload_type' => $recData['type'],
                        'file' => $recData['file'],
                    ]);
                }
            }
        }
    }
}
