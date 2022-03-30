<?php

namespace App\Http\Controllers;

use App\Movie;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function index() {
        //recupero tutti i film dal database
        $movies = Movie::all();

        //recupero tutti i film ordinati per voto
        //$movies = Movie::orderBy('vote', 'DESC')->get();

        //recupero tutti i film con un voto superiore o uguale a 8 
        //ordinati per voto
        //$movies = Movie::where('vote', '>=',8)->orderBy('vote', 'DESC')->get();

        //li passo alla vista "Home"
        return view('home', compact('movies'));
    }
}
