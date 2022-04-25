<?php
 
namespace App\Http\Controllers;
 
use App\Http\Controllers\Controller;
use App\Models\User;
 
class UserController extends Controller
{
    /**
     * Show the profile for a given user.
     *
     * @param  int  $nombreUsuario
     * @return \Illuminate\View\View
     */
    public function show($nombreUsuario)
    {
        $nombreUsuario = id;
        // pides el modelo $model findBy([username => $nombreUsuario])
        //procesas el modelo
        // se lo pasas a la plantilla
        return view('greeting', ['name' => $nombreUsuario]);
    }
}