@extends('base')

@section('main')
<div class="row">
<div class="col-sm-12">
    <h1 class="display-3">vehicles</h1>
     <div>
    <a style="margin: 19px;" href="{{ route('vehicles.create')}}" class="btn btn-primary">New vehicle</a>
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
        @foreach($vehicles as $vehicle)
        <tr>
            <td>{{$vehicle->id}}</td>
            <td>{{$vehicle->first_name}} {{$vehicle->last_name}}</td>
            <td>{{$vehicle->email}}</td>
            <td>{{$vehicle->job_title}}</td>
            <td>{{$vehicle->city}}</td>
            <td>{{$vehicle->country}}</td>
            <td>
                <a href="{{ route('vehicles.edit',$vehicle->id)}}" class="btn btn-primary">Edit</a>
            </td>
            <td>
                <form action="{{ route('vehicles.destroy', $vehicle->id)}}" method="post">
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
