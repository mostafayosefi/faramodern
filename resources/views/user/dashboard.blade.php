@extends('user.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>داشبورد کاربر</title>
@stop
 
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/core/core.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/persian-datepicker-0.4.5.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/fonts/feather-font/css/iconfont.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/demo_1/style.css">
<link rel="shortcut icon" href="{{env('APP_URL')}}/build/template/assets/images/favicon.png" />
</head>

<body class="sidebar-dark rtl">


@section('body')

      <div class="page-content">

        <div class="d-flex justify-content-between align-items-center flex-wrap grid-margin">
          <div>
            <h4 class="mb-3 mb-md-0">به داشبورد خوش آمدید</h4>
          </div>
          <div class="d-flex align-items-center flex-wrap text-nowrap">
            <div class="input-group date datepicker dashboard-date mb-2 ml-2 mb-md-0 d-md-none d-xl-flex">
              <span class="input-group-addon bg-transparent"><i data-feather="calendar"
                  class=" text-primary"></i></span>
              <input type="text" class="form-control tarikh">
            </div>
            <button type="button" class="btn btn-outline-info btn-icon-text ml-2 d-none d-md-block">
              <i class="btn-icon-prepend" data-feather="download"></i>
              درون ریزی
            </button>
            <button type="button" class="btn btn-outline-primary btn-icon-text ml-2 mb-2 mb-md-0">
              <i class="btn-icon-prepend" data-feather="printer"></i>
              چاپ
            </button>
            <button type="button" class="btn btn-primary btn-icon-text mb-2 mb-md-0">
              <i class="btn-icon-prepend" data-feather="download-cloud"></i>
              دانلود گزارش
            </button>
          </div>
        </div>

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">مشتریان جدید</h6>
                      <div class="dropdown mb-2">
                        <button class="btn p-0" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                              class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                              class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                              class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                              class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                              class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5">
                        <h3 class="mb-2">3,897</h3>
                        <div class="d-flex align-items-baseline">
                          <p class="text-success">
                            <span>+3.3%</span>
                            <i data-feather="arrow-up" class="icon-sm mb-1"></i>
                          </p>
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <div id="apexChart1" class="mt-md-3 mt-xl-0"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">سفارشات جدید</h6>
                      <div class="dropdown mb-2">
                        <button class="btn p-0" type="button" id="dropdownMenuButton1" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton1">
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                              class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                              class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                              class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                              class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                              class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5">
                        <h3 class="mb-2">35,084</h3>
                        <div class="d-flex align-items-baseline">
                          <p class="text-danger">
                            <span>-2.8%</span>
                            <i data-feather="arrow-down" class="icon-sm mb-1"></i>
                          </p>
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <div id="apexChart2" class="mt-md-3 mt-xl-0"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">رشد</h6>
                      <div class="dropdown mb-2">
                        <button class="btn p-0" type="button" id="dropdownMenuButton2" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton2">
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                              class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                              class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                              class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                              class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                              class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5">
                        <h3 class="mb-2">89.87%</h3>
                        <div class="d-flex align-items-baseline">
                          <p class="text-success">
                            <span>+2.8%</span>
                            <i data-feather="arrow-up" class="icon-sm mb-1"></i>
                          </p>
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <div id="apexChart3" class="mt-md-3 mt-xl-0"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- row -->

        <div class="row">
          <div class="col-12 col-xl-12 grid-margin stretch-card">
            <div class="card overflow-hidden">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-4 mb-md-3">
                  <h6 class="card-title mb-0">درآمد</h6>
                  <div class="dropdown">
                    <button class="btn p-0" type="button" id="dropdownMenuButton3" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton3">
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                          class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                          class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                          class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                          class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                          class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                    </div>
                  </div>
                </div>
                <div class="row align-items-start mb-2">
                  <div class="col-md-7">
                    <p class="text-muted tx-13 mb-3 mb-md-0">نمودار درآمد</p>
                  </div>
                  <div class="col-md-5 d-flex justify-content-md-end">
                    <div class="btn-group mb-3 mb-md-0" role="group" aria-label="Basic example">
                      <button type="button" class="btn btn-outline-primary">امروز</button>
                      <button type="button" class="btn btn-outline-primary d-none d-md-block">هفته</button>
                      <button type="button" class="btn btn-primary">ماه</button>
                      <button type="button" class="btn btn-outline-primary">سال</button>
                    </div>
                  </div>
                </div>
                <div class="flot-wrapper">
                  <div id="flotChart1" class="flot-chart"></div>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- row -->

        <div class="row">
          <div class="col-lg-7 col-xl-8 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-2">
                  <h6 class="card-title mb-0">فروش ماهیانه</h6>
                  <div class="dropdown mb-2">
                    <button class="btn p-0" type="button" id="dropdownMenuButton4" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton4">
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                          class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                          class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                          class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                          class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                          class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                    </div>
                  </div>
                </div>
                <p class="text-muted mb-4">نمودار فروش ماهیانه محصولات</p>
                <div class="monthly-sales-chart-wrapper">
                  <canvas id="monthly-sales-chart"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5 col-xl-4 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-2">
                  <h6 class="card-title mb-0">ذخیره سازی ابری</h6>
                  <div class="dropdown mb-2">
                    <button class="btn p-0" type="button" id="dropdownMenuButton5" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton5">
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                          class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                          class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                          class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                          class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                          class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                    </div>
                  </div>
                </div>
                <div id="progressbar1" class="mx-auto"></div>
                <div class="row mt-4 mb-3">
                  <div class="col-6 d-flex justify-content-end">
                    <div>
                      <label
                        class="d-flex align-items-center justify-content-end tx-10 text-uppercase font-weight-medium">کل
                        فضای ذخیره سازی <span class="p-1 mr-1 rounded-circle bg-primary-muted"></span></label>
                      <h5 class="font-weight-bold mb-0 text-left">8TB</h5>
                    </div>
                  </div>
                  <div class="col-6">
                    <div>
                      <label class="d-flex align-items-center tx-10 text-uppercase font-weight-medium"><span
                          class="p-1 ml-1 rounded-circle bg-primary"></span> فضای استفاده شده</label>
                      <h5 class="font-weight-bold mb-0">6TB</h5>
                    </div>
                  </div>
                </div>
                <button class="btn btn-primary btn-block">ارتقاء فضای ذخیره سازی</button>
              </div>
            </div>
          </div>
        </div> <!-- row -->

        <div class="row">
          <div class="col-lg-5 col-xl-4 grid-margin grid-margin-xl-0 stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-2">
                  <h6 class="card-title mb-0">صندوق دریافت</h6>
                  <div class="dropdown mb-2">
                    <button class="btn p-0" type="button" id="dropdownMenuButton6" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton6">
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                          class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                          class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                          class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                          class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                          class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                    </div>
                  </div>
                </div>
                <div class="d-flex flex-column">
                  <a href="#" class="d-flex align-items-center border-bottom pb-3">
                    <div class="ml-3">
                      <img src="{{env('APP_URL')}}/build/template/assets/images/face1.jpg" class="rounded-circle wd-35" alt="user">
                    </div>
                    <div class="w-100">
                      <div class="d-flex justify-content-between">
                        <h6 class="text-body mb-2">نسترن افشار</h6>
                        <p class="text-muted tx-12">12:30 عصر</p>
                      </div>
                      <p class="text-muted tx-13">سلام، روز بخیر ...</p>
                    </div>
                  </a>
                  <a href="#" class="d-flex align-items-center border-bottom py-3">
                    <div class="ml-3">
                      <img src="{{env('APP_URL')}}/build/template/assets/images/face2.jpg" class="rounded-circle wd-35" alt="user">
                    </div>
                    <div class="w-100">
                      <div class="d-flex justify-content-between">
                        <h6 class="text-body mb-2">مریم رسولی</h6>
                        <p class="text-muted tx-12">02:14 صبح</p>
                      </div>
                      <p class="text-muted tx-13">سلام، پروژه به پایان ...</p>
                    </div>
                  </a>
                  <a href="#" class="d-flex align-items-center border-bottom py-3">
                    <div class="ml-3">
                      <img src="{{env('APP_URL')}}/build/template/assets/images/face3.jpg" class="rounded-circle wd-35" alt="user">
                    </div>
                    <div class="w-100">
                      <div class="d-flex justify-content-between">
                        <h6 class="text-body mb-2">رضا محبی</h6>
                        <p class="text-muted tx-12">08:22 عصر</p>
                      </div>
                      <p class="text-muted tx-13">این قالب فوق العاده س!</p>
                    </div>
                  </a>
                  <a href="#" class="d-flex align-items-center border-bottom py-3">
                    <div class="ml-3">
                      <img src="{{env('APP_URL')}}/build/template/assets/images/face4.jpg" class="rounded-circle wd-35" alt="user">
                    </div>
                    <div class="w-100">
                      <div class="d-flex justify-content-between">
                        <h6 class="text-body mb-2">پدرام کاشف</h6>
                        <p class="text-muted tx-12">05:49 صبح</p>
                      </div>
                      <p class="text-muted tx-13">به امید دیدار</p>
                    </div>
                  </a>
                  <a href="#" class="d-flex align-items-center border-bottom py-3">
                    <div class="ml-3">
                      <img src="{{env('APP_URL')}}/build/template/assets/images/face5.jpg" class="rounded-circle wd-35" alt="user">
                    </div>
                    <div class="w-100">
                      <div class="d-flex justify-content-between">
                        <h6 class="text-body mb-2">پریسا توکلی</h6>
                        <p class="text-muted tx-12">01.19 صبح</p>
                      </div>
                      <p class="text-muted tx-13">سلام، وقت بخیر ...</p>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-7 col-xl-8 stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-2">
                  <h6 class="card-title mb-0">پروژه ها</h6>
                  <div class="dropdown mb-2">
                    <button class="btn p-0" type="button" id="dropdownMenuButton7" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton7">
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye"
                          class="icon-sm ml-2"></i> <span class="">مشاهده</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2"
                          class="icon-sm ml-2"></i> <span class="">ویرایش</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash"
                          class="icon-sm ml-2"></i> <span class="">حذف</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer"
                          class="icon-sm ml-2"></i> <span class="">چاپ</span></a>
                      <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download"
                          class="icon-sm ml-2"></i> <span class="">دانلود</span></a>
                    </div>
                  </div>
                </div>
                <div class="table-responsive">
                  <table class="table table-hover mb-0">
                    <thead>
                      <tr>
                        <th class="pt-0">#</th>
                        <th class="pt-0">نام پروژه</th>
                        <th class="pt-0">تاریخ شروع</th>
                        <th class="pt-0">تاریخ پایان</th>
                        <th class="pt-0">وضعیت</th>
                        <th class="pt-0">مسئول پروژه</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>طراحی قالب NobleUI</td>
                        <td>1399/01/04</td>
                        <td>1399/02/11</td>
                        <td><span class="badge badge-danger">منتشر شده</span></td>
                        <td>رضا افشار</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>توسعه قالب انگولار</td>
                        <td>1399/01/04</td>
                        <td>1399/01/26</td>
                        <td><span class="badge badge-success">بازبینی</span></td>
                        <td>نرگس علیپور</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>پروژه ReactJs</td>
                        <td>1399/05/04</td>
                        <td>1399/06/10</td>
                        <td><span class="badge badge-info-muted">در حال انجام</span></td>
                        <td>پدرام شریفی</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>طراحی قالب با VueJs</td>
                        <td>1399/06/14</td>
                        <td>1399/07/24</td>
                        <td><span class="badge badge-warning">در حال پیشرفت</span>
                        </td>
                        <td>پریسا توکلی</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>توسعه پروژه لاراول</td>
                        <td>1399/07/07</td>
                        <td>1399/08/08</td>
                        <td><span class="badge badge-danger-muted text-white">به زودی</span></td>
                        <td>مریم محبی</td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>طراحی قالب با NodeJs</td>
                        <td>1399/08/12</td>
                        <td>1399/09/12</td>
                        <td><span class="badge badge-primary">به زودی</span></td>
                        <td>فرهاد غفاری</td>
                      </tr>
                      <tr>
                        <td class="border-bottom">3</td>
                        <td class="border-bottom">توسعه قالب فروشگاهی</td>
                        <td class="border-bottom">1399/09/14</td>
                        <td class="border-bottom">1399/10/24</td>
                        <td class="border-bottom"><span class="badge badge-info-muted">در حال انجام</span></td>
                        <td class="border-bottom">ستاره سبحانی</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- row -->

      </div>
@stop
  
  

</body>

</html>