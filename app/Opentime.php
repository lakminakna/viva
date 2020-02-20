<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Opentime extends Model
{
   // protected $primaryKey = 'parking_space_id';
    protected $fillable = [
      'parking_space_id',
      'date',
      'open_from',
      'open_till'
    ];

    public function parking_space()
    {
        return $this->belongsTo('App\Parking_space', 'parking_space_id');
    }
}
