<?php

namespace App\Models\Inquiry;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactModel extends Model
{
    use HasFactory;
    protected $table = 'cl_appointments';
    protected $fillable = [
        'full_name',
        'email',
        'phone',
        'service',
        'appointment_date',
        'appointment_time',
        'subject',
        'message',
        'country',
        'status',
    ];

}
