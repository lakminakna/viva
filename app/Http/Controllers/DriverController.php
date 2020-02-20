<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Driver;


class DriverController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $drivers = Driver::all();

        return view('crud.drivers.index', compact('drivers'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('crud.drivers.create');
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

        $driver = new Driver([
            'first_name' => $request->get('first_name'),
            'last_name' => $request->get('last_name'),
            'email' => $request->get('email'),
            'gender' => $request->get('gender'),
            'contact_no' => $request->get('contact_no'),
            'address' => $request->get('address'),
            'licence_id' => $request->get('licence_id'),
            'nic' => $request->get('nic'),
          
            'image' => $request->get('image'),
            'username' => $request->get('username'),
            'password' => $request->get('password'),

        ]);
        $driver->save();
        return redirect('/logindriver')->with('success', 'Driver saved!');
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
         $driver = Driver::find($id);
        return view('crud.drivers.edit', compact('driver'));
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

        $driver = Driver::find($id);
        $driver->first_name =  $request->get('first_name');
        $driver->last_name = $request->get('last_name');
        $driver->email = $request->get('email');
        $driver->gender = $request->get('gender');
        $driver->contact_no = $request->get('contact_no');
        $driver->address = $request->get('address');
        $driver->nic = $request->get('nic');
        $driver->licence_id = $request->get('licence_id');
        $driver->username = $request->get('username');
        $driver->password = $request->get('password');



        $driver->save();

        return redirect('/logindriver')->with('success', 'Driver updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $driver = Driver::find($id);
        $driver->delete();

        return redirect('/drivers')->with('success', 'Driver deleted!');
    }
}
