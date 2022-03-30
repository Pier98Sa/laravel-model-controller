<?php

namespace App\Http\Controllers;

use App\Movie;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function index() {
        //recupero tutti i film dal database
        $movies = Movie::all();

        //li passo alla vista "Home"
        return view('home', compact('movies'));
    }
}
