@extends('layouts.app')

@section('content')
<div class="container-fuid">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">

            </div>
        </div>
    </div>
</div>
<div class="container-fluid>
<div class="table-responsive col-sm-4 col-md-6 col-lg-10 col-xs-12" id="busqueda" >
    <table class="table border table-bordered border-dark">
        <thead class="htable">
            <tr>
              <th scope="col" class="align-middle"><h3>Canción</h3></th>
              <th scope="col" class="align-middle"><h3>Autor</h3></th>
              <th scope="col" class="align-middle"><h3>Pelicula</h3></th>
              <th scope="col" class="align-middle"><h3>Nacionalidad</h3></th>
              <th scope="col" class="align-middle"><h3>Genero</h3></th>
              <th scope="col" class="align-middle"><h3>Ver Video</h3></th>
            </tr>
          </thead>
          @php
           $cont=1;
          @endphp
          @foreach((array)$canciones as $cancion)
        <tbody>
            <tr class="table-active">
                <td> <h5> {{$cancion['nombre_cancion']}}</h5></td>
                <td>{{$cancion['nombre_autor']}}</td>
                <td>{{$cancion['nombre_peli']}}</td>
                <td>{{$cancion['nacionalidad']}} </td>
                <td>{{$cancion['nombre_genero']}}</td>
                <td colspan="2"><!-- Button trigger modal -->
                   <button type="button" class="text-white btn hform" data-bs-toggle="modal" data-bs-target="#A{{$cont}}">
                        Ver video en Youtube
                      </button>
                </td>
            </tr>
        </tbody>

        <div class="modal fade" id="A{{$cont}}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="text-white modal-header hform">
                  <h5 class="text-white modal-title" id="staticBackdropLabel">{{$cancion['nombre_cancion']}}</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <iframe width="460" height="315" src="{{$cancion['url_youtube']}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>

              </div>
            </div>
          </div>

@php
 $cont=$cont+1;
@endphp
<!-- Modal -->

@endforeach
    </table>
</div>
</div>

@endsection
