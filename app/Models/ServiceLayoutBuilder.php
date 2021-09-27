<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceLayoutBuilder extends Model
{
    use HasFactory;
    protected $table = 'service_layout_builders';
    protected $primaryKey = 'sercie_row_id';
}
