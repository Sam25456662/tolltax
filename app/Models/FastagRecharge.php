<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FastagRecharge extends Model
{
    use HasFactory;
    protected $fillable = ['amount']; // Allow mass assignment for these fields
   
}

