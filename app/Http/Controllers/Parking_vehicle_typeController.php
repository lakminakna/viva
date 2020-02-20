<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Parking_vehicle_type;
use DB;                                                              //not sure
use Illuminate\Support\Facades\Response;
use Session;

class Parking_vehicle_typeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $parking_vehicle_type = Parking_vehicle_type::all();

        return view('crud.parking_vehicle_types.index', compact('parking_vehicle_types'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('crud.parking_vehicle_types.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        

        $parking_vehicle_type = new Parking_vehicle_type([
            'parking_space_id' => $request->get('parking_space_id'),
            'vehicle_type' => $request->get('vehicle_type'),
            'total_no_of_vehicles' => $request->get('total_no_of_vehicles'),
            'no_of_vehicles_parked' => $request->get('no_of_vehicles_parked'),
            'number_reserved' => $request->get('number_reserved'),
            'amount_per_hour' => $request->get('amount_per_hour')
        ]);
        $parking_vehicle_type->save();
        return redirect('/parking_vehicle_types')->with('success', 'Parking_vehicle_type saved!');
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
         $parking_vehicle_type = Parking_vehicle_type::find($id);
        return view('parking_vehicle_types.edit', compact('parking_vehicle_type'));
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

        $parking_vehicle_type = Parking_vehicle_type::find($id);
        $parking_vehicle_type->first_name =  $request->get('first_name');
        $parking_vehicle_type->last_name = $request->get('last_name');
        $parking_vehicle_type->email = $request->get('email');
        $parking_vehicle_type->job_title = $request->get('job_title');
        $parking_vehicle_type->city = $request->get('city');
        $parking_vehicle_type->country = $request->get('country');
        $parking_vehicle_type->save();

        return redirect('/parking_vehicle_types')->with('success', 'Parking_vehicle_type updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $parking_vehicle_type = Parking_vehicle_type::find($id);
        $parking_vehicle_type->delete();

        return redirect('/parking_vehicle_types')->with('success', 'Parking_vehicle_type deleted!');
    }
}
