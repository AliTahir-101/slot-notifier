*** Variables ***
${LOGIN URL}      https://services.vfsglobal.com/are/en/frp/login
${BROWSER}        chrome
${retry}          5 min
${retry-interval}    2 sec
${username}       your_email_address
${password}       your_portal_password
${login btn}      xpath://body/app-root[1]/div[1]/div[1]/app-login[1]/section[1]/div[1]/div[1]/mat-card[1]/form[1]/button[1]
${new booking btn}    xpath://body/app-root[1]/div[1]/div[1]/app-dashboard[1]/section[1]/div[1]/div[1]/div[2]/button[1]
${sub cat opt}    xpath://body[1]/app-root[1]/div[1]/div[1]/app-eligibility-criteria[1]/section[1]/form[1]/mat-card[1]/form[1]/div[3]/mat-form-field[1]/div[1]/div[1]/div[3]/mat-select[1]/div[1]/div[1]
${inner html}    Empty Response
# Add other configuration variables as needed
