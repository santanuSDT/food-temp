<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HeaderLayoutBuilder extends Model
{
    use HasFactory;
    protected $table = 'header_layout_builders';
    protected $primaryKey = 'header_row_id';
}
