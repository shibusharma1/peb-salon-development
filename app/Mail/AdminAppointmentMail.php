<?php
namespace App\Mail;

use App\Models\Inquiry\ContactModel;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class AdminAppointmentMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    public ContactModel $contact;

    public function __construct(ContactModel $contact)
    {
        $this->contact = $contact;
    }

    public function build()
    {
        return $this->subject('🔔 New Appointment Booking Received')
            ->view('emails.admin-appointment-mail', [
                'contact' => $this->contact,
            ]);
    }
}