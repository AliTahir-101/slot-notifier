import os
from sendgrid import SendGridAPIClient
from sendgrid.helpers.mail import Mail
from robot.api.deco import keyword

@keyword("Send Mail")
def send_mail(text: str)-> None:
    message = Mail(
    from_email = 'your_email_address',
    to_emails= 'your_email_address',
    subject="Slots Available!!!" if "Earliest Available Slot" in text else "No Slots Yet!!",
    html_content=text)
    try:
        sg = SendGridAPIClient(os.environ.get('SENDGRID_API_KEY'))
        response = sg.send(message)
        print(response.status_code)
        print(response.body)
        print(response.headers)
    except Exception as e:
        print(e.message)