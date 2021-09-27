<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BannerLayoutBuilder extends Model
{
    use HasFactory;
    protected $table = 'banner_layout_builders';
    protected $primaryKey = 'banner_row_id';
}
