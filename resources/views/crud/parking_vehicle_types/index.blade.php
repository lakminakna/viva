@extends('base')

@section('main')
<div class="row">
<div class="col-sm-12">
    <h1 class="display-3">parking_vehicle_types</h1>
     <div>
    <a style="margin: 19px;" href="{{ route('parking_vehicle_types.create')}}" class="btn btn-primary">New parking_vehicle_type</a>
    </div>
  <table class="table table-striped">
    <thead>
        <tr>
          <td>ID</td>
          <td>Name</td>
          <td>Email</td>
          <td>Job Title</td>
          <td>City</td>
          <td>Country</td>
          <td colspan = 2>Actions</td>
        </tr>
    </thead>
    <tbody>
        @foreach($parking_vehicle_type as $parking_vehicle_type)
        <tr>
            <td>{{$parking_vehicle_type->parking_space_id}}</td>
            <td>{{$parking_vehicle_type->vehicle_type}}</td>
            <td>{{$parking_vehicle_type->total_no_of_vehicles}}</td>
            <td>{{$parking_vehicle_type->no_of_vehicles_parked}}</td>
            <td>{{$parking_vehicle_type->number_reserved}}</td>
           
            <td>
                <a href="{{ route('parking_vehicle_types.edit',$parking_vehicle_type->id)}}" class="btn btn-primary">Edit</a>
            </td>
            <td>
                <form action="{{ route('parking_vehicle_types.destroy', $parking_vehicle_type->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
  </table>
<div>
</div>


<div class="col-sm-12">

  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}
    </div>
  @endif
</div>
@endsection
