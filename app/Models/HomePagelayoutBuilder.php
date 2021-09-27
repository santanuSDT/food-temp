<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomePagelayoutBuilder extends Model
{
    use HasFactory;
    protected $table = 'home_page_layout_builders';
    protected $primaryKey = 'home_page_row_id';
}
