<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //$cancion = HTTP::get('http://127.0.0.1:8888/phpbso/cancionm.php');
        $cancion = HTTP::get('http://127.0.0.1:8888/phpbso/cancionm.php');

        $canciones = $cancion->json();
        return view('home',compact('canciones'));

        //
    }
}
