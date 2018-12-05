<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/user/{user}','HomeController@show');
Route::get('/user/{user}/edit','HomeController@edit');
Route::put('/user/{user}','HomeController@update');
Route::get('/home','HomeController@home');



Route::get('/','IndexController@getIndex');
Route::get('/train','IndexController@getTrain');
Route::get('/flight','IndexController@getFlight');

Auth::routes();

// Admin Routes

Route::get('/posts', 'PostController@allTickets');
Route::get('/booking', 'PostController@allBookings');
Route::get('/posts/create', 'PostController@create');
Route::post('/posts','PostController@store');
Route::post('/bookings','BookingController@store');


Route::get('/posts/{posts}/edit','PostController@edit');
Route::put('/posts/{posts}','PostController@update');
Route::delete('/posts/{posts}','PostController@destroy');

Route::get('admin/home', 'AdminController@index');

Route::get('admin', 'Admin\LoginController@showLoginForm')->name('admin.login');
Route::post('admin', 'Admin\LoginController@login');
Route::post('admin-password/email', 'Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
Route::get('admin-password/reset', 'Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
Route::post('admin-password/reset', 'Admin\ResetPasswordController@reset');
Route::get('admin-password/reset/{token}', 'Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');

Route::get('/admin/{admin}','AdminController@show');
Route::get('/admin/{admin}/edit','AdminController@edit');
Route::put('/admin/{admin}','AdminController@update');

