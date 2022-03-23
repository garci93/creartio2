<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostBRequest;
use App\Http\Requests\UpdatePostBRequest;
use App\Models\PostB;

class PostBController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePostBRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePostBRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PostB  $postB
     * @return \Illuminate\Http\Response
     */
    public function show(PostB $postB)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PostB  $postB
     * @return \Illuminate\Http\Response
     */
    public function edit(PostB $postB)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePostBRequest  $request
     * @param  \App\Models\PostB  $postB
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePostBRequest $request, PostB $postB)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PostB  $postB
     * @return \Illuminate\Http\Response
     */
    public function destroy(PostB $postB)
    {
        //
    }
}
