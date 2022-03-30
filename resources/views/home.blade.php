
@extends('layouts.base')
@section('pageTitle','Netflix')

@section('content')

<div class="container py-5">
    <div class="row row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-sm-2  ">
        @foreach ( $movies as $movie )
            <div class="col g-4 ms_col-height">
                <div class="flip-box my-3 ">
                    <div class="flip-box-inner">

                        <div class="flip-box-front">
                            <!--Poster-->
                            <img class="poster-img" src="{{$movie->thumb}}" alt="{{$movie->title}}">
                        </div>
            
                        <div class="flip-box-back p-1">
                            <!--Titolo-->
                            <div><span class="fw-bolder">Titolo: </span> {{$movie->title}}</div>
                            <div><span class="fw-bolder">Titolo originale: </span>{{$movie->original_title}}</div>
            
                            <!--Produzione-->
                            <div>
                                <span class="fw-bolder">Produzione:</span> {{$movie->nationality}}
                            </div>

                            <!--Anno d'uscita-->
                            <div> <span class="fw-bolder">Uscito:</span> {{$movie->date}}</div>
            
                            <!--Valutazione-->
                            <div> <span class="fw-bolder">Voto: {{$movie->vote}}</span></div>
                            
            
                            <!--Riassunto-->
                            <div class="resume">
                            <span v-show="info.overview" class="fw-bolder">Overview:  </span>  {{$movie->overview}}
                            </div>   
                        </div> 
                        
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
    
@endsection
    
