<html>
<head>

</head>
<body>
 <!--  <script>

  document.querySelector('.img__btn').addEventListener('click', function() {
  document.querySelector('.cont').classList.toggle('s--signup');
});
</script> -->
 <style type="text/css">

  body {
    /*background: url("/assets/landowner/img/parking.jpg");*/
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-color: #90ee90;
}
.box{
margin-top: 0;
 position: relative;
 top: 150px;
 width:500px;
 margin:0 auto;
 margin-bottom: 100px;
 border:1px solid #ccc;
 background-color: #228b22;
 /*background: url();*/
}
   .t-r {
       position: absolute;
       right: 10px;
       top: 18px;
   }
  </style>

@extends('base')

<div  align="top-right">
      <i class="fas fa-arrow-right"></i><a href="{{ url('/loginlandowner') }}">BACK</a>
    </div>

<div class="t-r links">
      <i class="fas fa-arrow-left"></i><a href="{{ url('/') }}">LOGOUT</a>
    </div>

@section('main')
<div class="row">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-3">Add your Parking</h1>
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
      <div class="container box">
      <form method="post" action="{{ route('parking_spaces.store') }}" enctype="multipart/form-data">
          @csrf
          <div class="form-group">
              <label for="name">Name of the parking space:</label>
              <input type="text" class="form-control" name="name" autocomplete="on" required/>
          </div>

          <div class="form-group">
              <label for="address">Address:</label>
              <input type="text" class="form-control map-input" name="address" id="address-input" autocomplete="on" required/>
          </div>
          <div>
          <label for="address">Latitudes :</label><input type="text" name="latitude" id="address-latitude" value="0" />
          <label for="address">Longitudes :</label><input type="text" name="longitude" id="address-longitude" value="0" />
        </div>
          <div id="address-map-container" style="width:100%;height:400px; ">
            <div style="width: 100%; height: 100%" id="address-map"></div>
          </div>
          <div class="form-group">
              <label for="description">Description:</label>
              <input type="textarea" class="form-control" name="description" autocomplete="on" required/>
          </div>



          <div class="form-group">
              <label for="image">Images:</label>
              <!-- <input type="file" name="parkingimage"  multiple> -->   <!-- This is the normal way in html -->
              <!-- Laravel multiple image upload verification starts here -->
              <!-- <div class="container">
      @if (count($errors) > 0)
      <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
          @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div>
      @endif

        @if(session('success'))
        <div class="alert alert-success">
          {{ session('success') }}
        </div>
        @endif -->

    <!-- <h3 class="jumbotron">Laravel Multiple File Upload</h3> -->
<!-- <form method="post" action="{{url('form')}}" enctype="multipart/form-data">
  {{csrf_field()}}

        <div class="input-group control-group increment" >
          <input type="file" name="image" class="form-control">   previously - name="filename[]
          <div class="input-group-btn">
            <button class="btn btn-success" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
          </div>
        </div> -->
        <!-- <div class="clone hide">
          <div class="control-group input-group" style="margin-top:10px">
            <input type="file" name="filename[]" class="form-control">
            <div class="input-group-btn">
              <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
            </div>
          </div>
        </div>-->
<!--
        <button type="submit" class="btn btn-primary" style="margin-top:10px">Submit</button>

  </form>
  </div> -->

  <!-- Laravel multiple image upload verification ends here -->

          </div>



          <!-- <div class="form-group">
              <label for="city">Open from:</label>
              <input type="datetime-local" class="form-control" name="city"/>
          </div>
          <div class="form-group">
              <label for="country">Open till:</label>
              <input type="datetime-local" class="form-control" name="country"/>
          </div>-->

          <div>
               <label for="city">Open on:</label><br>
              <input type="checkbox" name="opentime1" value="1"> Poya days
              <input type="checkbox" name="opentime2" value="1"> Public Holidays
              <input type="checkbox" name="opentime3" value="1" > Bank Holidays<br><small>Thesse will be displayed for the users of the application</small><br><br>
          </div>

           <div>
               <label for="city">Open Time:</label><br>
               <table style="width:100%">
                <tr>
              <td><label for="nothing"></label></td>
              <th> <label for="openfrom">Open from:</label></th>
              <th><label for="opentill">Open Till:</label></th>
            </tr>
                <tr>
               <th><label for="monday">Weekday</label></th>
               <td><input type="time" class="form-control" name="open_from_weekday"/></td>
              <td><input type="time" class="form-control" name="open_till_weekday"/> </td>
            </tr>
            <!-- <tr>
              <th><label for="tuesday">Tuesday</label></th>
              <td><input type="time" class="form-control" name="open_from_tuesday"/></td>
              <td><input type="time" class="form-control" name="open_till_tuesday"/></td>
            </tr>
             <tr>
              <th><label for="wednesday">Wednesday</label></th>
              <td><input type="time" class="form-control" name="open_from_wednesday"/></td>
              <td><input type="time" class="form-control" name="open_till_wednesday"/></td>
            </tr>
             <tr>
              <th><label for="thursday">Thursday</label></th>
              <td><input type="time" class="form-control" name="open_from_thursday"/></td>
              <td><input type="time" class="form-control" name="open_till_thursday"/></td>
            </tr>
             <tr>
              <th><label for="friday">Friday</label></th>
              <td><input type="time" class="form-control" name="open_from_friday"/></td>
              <td><input type="time" class="form-control" name="open_till_friday"/></td>
            </tr> -->
             <tr>
              <th><label for="saturday">Saturday</label></th>
              <td><input type="time" class="form-control" name="open_from_saturday"/></td>
              <td><input type="time" class="form-control" name="open_till_saturday"/></td>
            </tr>
             <tr>
              <th><label for="sunday">Sunday</label></th>
              <td><input type="time" class="form-control" name="open_from_sunday"/></td>
              <td><input type="time" class="form-control" name="open_till_sunday"/></td>
            </tr>
          </table>
          <br>
          </div>

          <div class="form-group">
          <label for="reservation">Select property image?</label></br>
            <input type="file" name="image" class="form-control">
          </div>
<br>
          <div class="form-group">
               <label for="reservation">Is reservation allowed?</label></br>
              <input type="radio"  name="reservation_status" value=1> Allowed<br>
              <input type="radio"  name="reservation_status" value=0 checked> Not allowed<br>
          </div>
          <button type="submit" class="btn btn-primary-outline">Add Parking</button>
      </form>
  </div>
</div>
</div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&callback=initialize" async defer></script>
  <script src="{{ asset('assets/js/mapInput.js') }}"></script>
@endsection
</body>
</html>
