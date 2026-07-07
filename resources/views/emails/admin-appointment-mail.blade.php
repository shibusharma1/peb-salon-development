<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Appointment Booking Confirmation</title>
    <style type="text/css" rel="stylesheet" media="all">
        /* Base ------------------------------ */
        *:not(br):not(tr):not(html) {
            font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            width: 100% !important;
            height: 100%;
            margin: 0;
            line-height: 1.4;
            background-color: #F5F7F9;
            color: #839197;
            -webkit-text-size-adjust: none;
        }

        a {
            color: #414EF9;
        }

        /* Layout ------------------------------ */
        .email-wrapper {
            width: 100%;
            margin: 0;
            padding: 0;
            background-color: #F5F7F9;
        }

        .email-content {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        /* Masthead ----------------------- */
        .email-masthead {
            padding: 25px 0;
            text-align: center;
        }

        .email-masthead_logo {
            max-width: 400px;
            border: 0;
        }

        .email-masthead_name {
            font-size: 16px;
            font-weight: bold;
            color: #839197;
            text-decoration: none;
            text-shadow: 0 1px 0 white;
        }

        /* Body ------------------------------ */
        .email-body {
            width: 100%;
            margin: 0;
            padding: 0;
            border-top: 1px solid #E7EAEC;
            border-bottom: 1px solid #E7EAEC;
            background-color: #FFFFFF;
        }

        .email-body_inner {
            width: 570px;
            margin: 0 auto;
            padding: 0;
        }

        .email-footer {
            width: 570px;
            margin: 0 auto;
            padding: 0;
            text-align: center;
        }

        .email-footer p {
            color: #839197;
        }

        .body-action {
            width: 100%;
            margin: 30px auto;
            padding: 0;
            text-align: center;
        }

        .body-sub {
            margin-top: 25px;
            padding-top: 25px;
            border-top: 1px solid #E7EAEC;
        }

        .content-cell {
            padding: 35px;
        }

        .align-right {
            text-align: right;
        }

        /* Type ------------------------------ */
        h1 {
            margin-top: 0;
            color: #292E31;
            font-size: 19px;
            font-weight: bold;
            text-align: left;
        }

        h2 {
            margin-top: 0;
            color: #292E31;
            font-size: 16px;
            font-weight: bold;
            text-align: left;
        }

        h3 {
            margin-top: 0;
            color: #292E31;
            font-size: 14px;
            font-weight: bold;
            text-align: left;
        }

        p {
            margin-top: 0;
            color: #839197;
            font-size: 16px;
            line-height: 1.5em;
            text-align: left;
        }

        p.sub {
            font-size: 12px;
        }

        p.center {
            text-align: center;
        }

        /* Buttons ------------------------------ */
        .button {
            display: inline-block;
            width: 200px;
            background-color: #414EF9;
            border-radius: 3px;
            color: #ffffff;
            font-size: 15px;
            line-height: 45px;
            text-align: center;
            text-decoration: none;
            -webkit-text-size-adjust: none;
            mso-hide: all;
        }

        .button--green {
            background-color: #28DB67;
        }

        .button--red {
            background-color: #FF3665;
        }

        .button--blue {
            background-color: #414EF9;
        }

        /*Media Queries ------------------------------ */
        @media only screen and (max-width: 600px) {

            .email-body_inner,
            .email-footer {
                width: 100% !important;
            }
        }

        @media only screen and (max-width: 500px) {
            .button {
                width: 100% !important;
            }
        }
    </style>
</head>

{{-- <body>

    <h1>Thank you for contacting us!</h1>

    <p>
        Dear {{ $contact->full_name }},
    </p>

    <p>
        Thank you for contacting us. We have received your appointment request.
    </p>

    <p>
        <strong>Email:</strong> {{ $contact->email }}<br>
        <strong>Phone:</strong> {{ $contact->phone }}<br>
        <strong>Service:</strong> {{ $contact->service }}<br>
        <strong>Appointment Date:</strong> {{ $contact->appointment_date }}<br>
        <strong>Appointment Time:</strong> {{ $contact->appointment_time }}
    </p>

    <p>
        One of our team members will contact you shortly.
    </p>
 
</body> --}}

<body style="margin:0;padding:0;background:#fdf8fb;font-family:Arial,Helvetica,sans-serif;">

    <table width="100%" cellpadding="0" cellspacing="0" style="background:#fdf8fb;padding:40px 15px;">
        <tr>
            <td align="center">

                <!-- Email Card -->
                <table width="650" cellpadding="0" cellspacing="0"
                    style="max-width:650px;background:#ffffff;border-radius:24px;overflow:hidden;box-shadow:0 15px 40px rgba(177,50,122,.12);">

                    <!-- Header -->
                    <tr>
                        <td
                            style="background:linear-gradient(135deg,#6d1b47,#b1327a,#d867a2);padding:40px 30px;text-align:center;">

                            <h1
                                style="margin:0;color:#ffffff;font-size:34px;font-family:'Georgia',serif;font-weight:700;">
                                Professional Elegance Beauty
                            </h1>

                            <p style="margin-top:10px;color:rgba(255,255,255,.9);font-size:15px;">
                                Luxury Beauty & Wellness Experience
                            </p>

                        </td>
                    </tr>

                    <!-- Greeting -->
                    <tr>
                        <td style="padding:40px 35px 20px;">

                            <h2 style="color:#6d1b47;margin-bottom:20px;">
                                🔔 New Appointment Booking Received
                            </h2>

                            <p style="font-size:16px;color:#555;line-height:1.8;">
                                Hello Admin,
                            </p>

                            <p style="font-size:16px;color:#555;line-height:1.8;">
                                A new appointment booking has been submitted through the Professional Elegance Beauty
                                website.
                                Please review the details below and contact the customer if necessary.
                            </p>

                        </td>
                    </tr>

                    <!-- Appointment Card -->
                    <tr>
                        <td style="padding:0 35px;">

                            <table width="100%"
                                style="background:#fcf2f8;border:1px solid #f0d7e6;border-radius:18px;padding:25px;">
                                <tr>
                                    <td>

                                        <h3 style="margin-top:0;margin-bottom:20px;color:#b1327a;font-size:18px;">
                                            Customer Booking Details
                                        </h3>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Name:</strong>
                                            {{ $contact->full_name }}
                                        </p>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Email:</strong>
                                            {{ $contact->email }}
                                        </p>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Phone:</strong>
                                            {{ $contact->phone }}
                                        </p>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Service:</strong>
                                            {{ $contact->service }}
                                        </p>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Message:</strong>
                                            {{ $contact->message ?: 'N/A' }}
                                        </p>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Appointment Date:</strong>
                                            {{ $contact->appointment_date }}
                                        </p>

                                        <p style="margin:10px 0;color:#444;">
                                            <strong>Appointment Time:</strong>
                                            {{ $contact->appointment_time }}
                                        </p>

                                    </td>
                                </tr>
                            </table>

                        </td>
                    </tr>

                    <!-- Message -->
                    <tr>
                        <td style="padding:30px 35px;">

                            <p style="font-size:16px;color:#555;line-height:1.8;">
                                Please log in to the admin panel to review and manage this appointment request.
                            </p>

                            <p style="font-size:16px;color:#555;line-height:1.8;">
                                Ensure the customer is contacted promptly for confirmation and scheduling.
                            </p>

                        </td>
                    </tr>

                    <!-- CTA -->
                    <tr>
                        <td align="center" style="padding:10px 35px 40px;">

                            <a href="{{ url('/inquiry/contact_us') }}"
                                style="display:inline-block;padding:16px 34px;background:linear-gradient(135deg,#b1327a,#d867a2);color:#fff;text-decoration:none;border-radius:999px;font-weight:600;font-size:15px;">
                                View Appointment
                            </a>
                        </td>
                    </tr>

                    <!-- Footer -->
                    <tr>
                        <td style="background:#faf5f8;padding:25px;text-align:center;border-top:1px solid #f2e5ee;">

                            <p style="margin:0;color:#888;font-size:14px;">
                                Professional Elegance Beauty
                            </p>

                            <p style="margin-top:8px;color:#999;font-size:13px;">
                                This is an automated notification from the Professional Elegance Beauty booking system.
                            </p>

                        </td>
                    </tr>

                </table>

            </td>
        </tr>
    </table>

</body>

</html>
