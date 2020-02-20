@extends('base')

@section('main')
<div class="row">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-3">Add Vehicle Types</h1>
  <div>
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('parking_vehicle_types.store') }}">
          @csrf
          <div class="form-group">
              <label for="parking_space_id">Vehicle Type:</label>
              <input type="text" class="form-control" name="parking_space_id"/>
          </div>
          <div class="form-group">
              <label for="vehicle_type">Vehicle Type:</label>
              <input type="text" class="form-control" name="vehicle_type"/>
          </div>

          <div class="form-group">
              <label for="total_no_of_vehicles">Total Number of Vehicles:</label>
              <input type="text" class="form-control" name="total_no_of_vehicles"/>
          </div>

          <div class="form-group">
              <label for="no_of_vehicles_parked">Number of Vehicles Parked:</label>
              <input type="text" class="form-control" name="no_of_vehicles_parked"/>
          </div>
          <div class="form-group">
              <label for="number_reserved">Reserved Number of Vehicles:</label>
              <input type="text" class="form-control" name="number_reserved"/>
          </div>
          
         
          <button type="submit" class="btn btn-primary-outline">Add Vehicle Types</button>
      </form>
  </div>
</div>
</div>
@endsection
