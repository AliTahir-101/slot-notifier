# Finnish Embassy Appointment Slot Notifier

**Description:** This project automates the process of checking for available appointment slots on the Finnish Embassy's services website. When available slots are found, it sends an email notification to the specified address.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)
- [Disclaimer](#Disclaimer)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- [Python](https://www.python.org/) (>=3.6) is installed.
- Install required Python packages using `pip`:

   ```shell
   pip install robotframework robotframework-seleniumlibrary sendgrid
- Ensure you have the Chrome WebDriver (or WebDriver for your preferred browser) installed and added to your system's PATH.
- Set up a SendGrid account and obtain an API key to enable email notifications.
- Configure environment variables:
    ```shell
    export SENDGRID_API_KEY=your_sendgrid_api_key
## Getting Started
To get started with this project, follow these steps:

- Clone this repository to your local machine:
    ```shell
    git clone git@github.com:AliTahir-101/slot-notifier.git
- Navigate to the project directory:
    ```shell
    cd slot-notifier
- Install the required Python packages:
    ```shell
    pip install -r requirements.txt
## Usage
To use this project, follow these steps:
- Update the configuration variables in config/config.robot to match your requirements.
- Create or modify test cases in the tests/test_cases/ directory to suit your appointment slot checking needs.
- Run your test cases using Robot Framework:
    ```shell
    robot -d results tests/test_cases/
- This will execute your test cases and notify you via email if appointment slots are available.
## Configuration
The project's configuration can be found in config/config.robot. You can customize the following variables:
- `${LOGIN URL}`: The URL to the Finnish Embassy's appointment services login page.
- `${BROWSER}`: The web browser to use for automation (e.g., chrome, firefox).
- `${retry}`: The maximum time to retry a failed keyword (e.g., 5 min).
- `${retry-interval}`: The time interval between retry attempts (e.g., 2 sec).
- `${username}`: Your login username.
- `${password}`: Your login password.
- `${login btn}`: The locator for the login button.
- `${new booking btn}`: The locator for the "New Booking" button
## Contributing
Contributions are welcome! If you'd like to contribute to this project, please follow these guidelines:
- Fork the project and create a new branch for your feature or bug fix.

- Make your changes and ensure they are well-tested.

- Create a pull request with a clear description of your changes.

- Follow the project's code of conduct and respect the contribution guidelines.

## License
This project is licensed under the GNU General Public License (GPL-3.0). See the [LICENSE](https://github.com/AliTahir-101/slot-notifier/blob/main/LICENSE) file for details.

## Disclaimer

This project is provided for educational and demonstration purposes only. It should be used responsibly and in compliance with the terms of service and policies of any websites or services it interacts with. Unauthorized scraping or any other activity that violates the terms of service of third-party websites is not condoned and should be avoided.

Before using this project, please review and respect the terms of service, privacy policies, and usage guidelines of any websites or services you intend to interact with. The author of this project is not responsible for any misuse or violations of such terms.

Use this project responsibly and ensure that your actions align with legal and ethical standards.
