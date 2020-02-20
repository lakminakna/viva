<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Opentime;


class OpentimeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $opentimes = Opentime::all();

        return view('opentimes.index', compact('opentimes'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('opentimes.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
            'first_name'=>'required',
            'last_name'=>'required',
            'email'=>'required'
        ]);

        $opentime = new Opentime([
            'driver_id' => $request->get('driver_id'),
            'parking_space_id' => $request->get('parking_space_id'),
            'duration_from' => $request->get('duration_from'),
            'duration_to' => $request->get('duration_to'),
            
        ]);
        $opentime->save();
        return redirect('/opentimes')->with('success', 'Opentime saved!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $opentime = Opentime::find($id);
        return view('opentimes.edit', compact('opentime'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'first_name'=>'required',
            'last_name'=>'required',
            'email'=>'required'
        ]);

        $opentime = Opentime::find($id);
        $opentime->first_name =  $request->get('first_name');
        $opentime->last_name = $request->get('last_name');
        $opentime->email = $request->get('email');
        $opentime->job_title = $request->get('job_title');
        $opentime->city = $request->get('city');
        $opentime->country = $request->get('country');
        $opentime->save();

        return redirect('/opentimes')->with('success', 'Opentime updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $opentime = Opentime::find($id);
        $opentime->delete();

        return redirect('/opentimes')->with('success', 'Opentime deleted!');
    }
}
