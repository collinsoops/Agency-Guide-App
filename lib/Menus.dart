import 'Menu.dart';
class Menus{
  Menus();
   List<Menu> homemenus = const <Menu>[
    const Menu(
        title: 'Withdraw Money',
        description: "This menu helps Customer to Withdraw Cash From Agent.",
        strImages: [
          "assets/images/icons/ic_transact_cash_withdrawal.png",
          "assets/images/withdrawal/1.png",
          "assets/images/withdrawal/2.png",
          "assets/images/withdrawal/3.png",
          "assets/images/withdrawal/4.png",
          "assets/images/withdrawal/5.png",
          "assets/images/withdrawal/6.png",
          "assets/images/withdrawal/7.png",
          "assets/images/withdrawal/8.png",
          "assets/images/withdrawal/9.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Withdraw Money option under home menu.\n",
          "i. Select the Agent’s Account you want to withdraw to (Destination Account).\n",
          "i. Select option to search customer with (example: phone no, ID no, service no).\n"
              "ii. Enter Search option Data.\n",
          "i. Tap of FETCH CUSTOMER DATA button to proceed.\n"
              "ii. If successfully fetched proceed to the next step(swipe for next).\n",
          "i. Select Customer Source Account.\n"
              "ii. Enter the amount the customer wish to withdraw.\n",
          "i. Tap on WITHDRAW CASH button to proceed.",
          "i. Confirm whether the cash withdrawal details are correct.\n"
              "ii. Enter your Agency Banking password.\n"
              "iii. Tap on CONFIRM button to verify the transaction.\n",
          "i. The customer will shortly receive a text message with One Time Password (OTP).\n"
              "ii. Enter the OTP sent to the customer on Harambee Agency Banking application inside the provided boxes as shown above.\n"
              "iii. Tap on the SUBMIT OTP button to verify the OTP and proceed to complete the transaction.\n",
          "i. The transaction will be processed and a Print button of Receipt Displayed.\n"
              "ii. Tab on Print button to Print.\n",
        ]),
    const Menu(
        title: 'Cash Deposit',
        description:
        "This Menu helps the Agent deposit money the the customers Account.",
        strImages: [
          "assets/images/icons/ic_transact_cash_deposit.png",
          "assets/images/deposit/1.png",
          "assets/images/deposit/2.png",
          "assets/images/deposit/3.png",
          "assets/images/deposit/4.png",
          "assets/images/deposit/5.png",
          "assets/images/deposit/6.png",
          "assets/images/deposit/7.png",
          "assets/images/deposit/8.png",
          "assets/images/deposit/9.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Cash Deposit option in the menu.\n",
          "i. Select the Agent's Source Account.\n",
          "i. Select the option to Search Customer with (example: Phone No,).\n"
              "ii. Enter data depending on Search Option Chosen.\n",
          "i. Tab on Fetch Customer Data.\n"
              "ii. If Successful and correct, proceed to step v below.\n",
          "i. Enter the Destination Account of the deposited Funds.\n",
          "i. Enter Amount the customer wish to deposit.\n"
              "ii. Enter the Narration Statement of the Transaction.\n",
          "i. Tap on DEPOSIT CASH button to proceed.\n",
          "i. Confirm that the money deposit details that you entered are correct.\n"
              "ii. Tap on CONFIRM button to proceed.",
          "i. In the event the agent has insufficient balance in the Float source account, they will get a pop-up message about the same. Otherwise, proceed to Step iii below.\niii. Kindly wait for Harambee Agency App to prompt you to print the Receipt.",
          "Proceed to Print the Receipt by tapping on Print button.\n"
        ]),
    const Menu(
        title: 'Account Balance',
        description: "This Menu helps Agent to get Account Balance.",
        strImages: [
          "assets/images/icons/ic_transact_account_balance.png",
          "assets/images/balance/1.png",
          "assets/images/balance/2.png",
          "assets/images/balance/4.png",
          "assets/images/balance/5.png",
          "assets/images/balance/6.png",
          "assets/images/balance/7.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Account Balance Option in the Home Menu.\n",
          "i. Select the option to Search Customer with (example: Phone No).\n"
              "ii. Enter data depending on Search Option Chosen.\n"
              "iii. Tab on Fetch Customer Data.\n"
              "iv. If successfully fetched, proceed to the Step(Swipe).\n",
          "i. Select the Account Type the customer wish to get balance.\n"
              "ii. Tap on the CHECK BALANCE button to proceed.\n",
          "i. Enter your Agency Banking Pin to Proceed.\n",
          "i. The customer will receive an OTP from HARAMBEE SACCO.\n"
              "ii. Enter the OTP in the provided boxes and proceed.\n"
              "iii. Tap on  SUBMIT OTP button to proceed.\n",
          "i. If successful, the customer balance will be displayed on the screen.\n"
              "ii. Tap on PRINT button to print the Receipt."
        ]),
    const Menu(
        title: ' Account Statement',
        description: "This Menu helps Agents to Get Customer Account Statement.",
        strImages: [
          "assets/images/icons/ic_transact_account_statement.png",
          "assets/images/account-statement/1.png",
          "assets/images/account-statement/2.png",
          "assets/images/account-statement/3.png",
          "assets/images/account-statement/4.png",
          "assets/images/account-statement/5.png",
          "assets/images/account-statement/6.png"
        ],
        thesteps: [
          "",
          "i. Tap on My Account on the App Bar to navigate to the menus.\n"
              "ii. Tap on the My Account Statement option in the menus.",
          "i.	Select the option to Search Customer with (example: Phone No).\n"
              "ii.	Enter data depending on Search Option Chosen.\n"
              "iii.	Tab on Fetch Customer Data.\n",
          "i.	If successfully fetched, proceed to the Step below. \n"
              "ii.	Select the Account Type the customer wish to get Statement.\n"
              "iii.	Tap on the CHECK STATEMENT button to proceed.\n",
          "i.	Enter your Agency Banking Password.\n"
              "ii	Tap on the CONFIRM button to verify your Password.\n",
          "i.	Enter the OTP in the provided boxes and tap on SUBMIT button",
          "i.	Tap on Print Receipt to proceed to print."
        ]),
    const Menu(
        title: 'Pay Loan',
        description: " This menu helps agent to Assist customers to pay loans.",
        strImages: [
          "assets/images/icons/ic_transact_loan_payment.png",
          "assets/images/payloan/1.png",
          "assets/images/payloan/2.png",
          "assets/images/payloan/3.png",
          "assets/images/payloan/4.png",
          "assets/images/payloan/5.png",
          "assets/images/payloan/6.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Pay Loan under the Menus.\n",
          "i. Select the Agent’s Source Account.\n"
              "ii. Select the option to Search Customer with (example: Phone No, Id no).\n"
              "iii. Enter data depending on Search Option Chosen.\niv. Tab on Fetch Customer Data.\n",
          "i. Select Loan the Customer would wish to pay.\n",
          "i. Enter the Amount you wish to pay.\n"
              "ii. Tap on the PAY LOAN button to proceed.",
          "i. Confirm that the Loan Payment details that you entered are correct.\n"
              "ii. Enter password to proceed.\n"
              "iii. Tap CONFIRM button to proceed.",
          "i. If successful, Loan Payment request will been made.\nii. A Print Receipt Button will be displayed.\n",
          " Proceed to print the Receipt\n"
        ]),
    Menu(
        title: 'Member Registration',
        description:
        "This menu enables agents to register new members to Harambee Sacco.",
        strImages: [
          "assets/images/icons/ic_transact_register_member.png",
          "assets/images/reg/1.png",
          "assets/images/reg/2.png",
          "assets/images/reg/4.png",
          "assets/images/reg/5.png",
          "assets/images/reg/6.png",
          "assets/images/reg/7.png",
          "assets/images/reg/8.png",
        ],
        thesteps: [
          "",
          "i. Tap on MY ACCOUNT on the App Bar to navigate to the account menus.\n"
              "ii. Tap on the New Member Registration option under the Menus.\n",
          " i. Enter the full names of the member as they appear in the in any verification details provided.\n"
              " ii. Enter the details below in the respective places.\n"
              "iii. Enter the person’s Phone number.\n"
              "iv. Enter the ID/Military number.\n"
              "v. Enter Date of the Birth.\n"
              "vi. Enter Employment Status.\n"
              "vii. Enter region.\n"
              "viii. Enter the Postal address.\n",
          "i. Upload the passport-sized photograph.\n"
              "ii. Upload the photo of ID card.\n"
              "iii. Tap on CONFIRM button to proceed.\n",
          "i. Confirm that the details entered are correct and proceed to enter your password and tap on confirm",
          "i. Tap on CONFIRM button to proceed\n",
          "i. The customer will shortly receive a text message with One Time Password (OTP).\n"
              "ii. Enter the OTP sent to the customer on Harambee Pesa application inside the provided boxes.\n"
              "iii. Tap on the  SUBMIT OTP button to verify the OTP and proceed to complete the transaction.\n",
          "i. The new member should receive a Message from the Sacco about the registration and awaiting the confirmation from the SACCO.\n"
              "ii. Proceed to on PRINT RECEIPT button to print the member registration details."
        ]),
    Menu(
        title: 'Float Deposit',
        description:
        "Helps Agent to deposit money from Sacco Account to Float Account",
        strImages: [
          "assets/images/icons/ic_account_float_deposit.png",
          "assets/images/float/1.png",
          "assets/images/float/2.png",
          "assets/images/float/3.png",
          "assets/images/float/4.png",
          "assets/images/float/5.png"
        ],
        thesteps: [
          "",
          "i. Tap on MY ACCOUNT on the App Bar to navigate to the account menus.\nii. Tap on the FLOAT DEPOSIT.\n",
          " i. Choose the Source Account.\nii. Choose the Float Account.\niii. Enter the Amount to Deposit.\niv. Tap on Submit button to proceed",
          "i. Confirm that the details are correct and enter the password\nii. Tap on Confirm button to proceed.",
          "i. Enter the OTP message sent to the Account Holder and Click Confirm to proceed.\n",
          "If successful, the float account will be debited and a Verification message sent to the Agent’s Phone."
        ]),
    const Menu(
        title: 'Loan Balance',
        description: "Helps agents Check Loan Balances for Harambee Members.",
        strImages: [
          "assets/images/icons/ic_transact_loan_balance.png",
          "assets/images/loanbal/1.png",
          "assets/images/loanbal/2.png",
          "assets/images/loanbal/3.png",
          "assets/images/loanbal/4.png",
          "assets/images/loanbal/5.png",
          "assets/images/loanbal/6.png",
        ],
        thesteps: [
          "",
          "i.  i. Tap on the Loan Balance Option in the Home Menu.\n",
          "i. Select the option to Search Customer with (example: Phone No).\n"
              "ii. Enter data depending on Search Option Chosen.\n"
              "iii. Tab on Fetch Customer Data.\n",
          "i. If successfully fetched, proceed to the Step ii below.\n"
              "ii. Select the Account Type the customer wish to get Statement.\n"
              "iii. Tap on the CHECK LOAN BALANCE button to proceed.\n",
          "i. Confirm that the details entered are correct.\n"
              "ii. Enter your Agency Banking Password.\n"
              "iii. Tap on the CONFIRM TRANSACTION button to verify your Password.\n",
          "i. The customer will shortly receive a text message with One Time Password (OTP).\n"
              "ii. Enter the OTP sent to the customer on Harambee Pesa application inside the provided boxes.\n"
              "iii. Tap on the COMPLETE TRANSACTION button to verify the OTP and proceed to complete the transaction.\n",
          "The Loan Balance you requested will be loaded and displayed.",
          "Tap Print Button to Print the receipt."
        ]),
    const Menu(
        title: 'Settings',
        description:
        "Helps agents troubleshoot issues like printing and connection.",
        strImages: [
          "assets/images/icons/ic_account_settings.png",
          "assets/images/settings/1.png",
          "assets/images/settings/2.png"
        ],
        thesteps: [
          "",
          "i. Tap on MY ACCOUNT on the App Bar to navigate to the account menus.\nii. Tap on the Settings option under the menu.\n",
          "i. In case of printer issues Tab on Test Printer.\nii. If there is no print out.\niii. Please Contact the Sacco for More instructions\n"
        ]),
  ];

  List<Menu> ServiceMenus = const <Menu>[
    const Menu(
        title: 'Withdraw Money',
        description: "This menu helps Customer to Withdraw Cash From Agent.",
        strImages: [
          "assets/images/icons/ic_transact_cash_withdrawal.png",
          "assets/images/withdrawal/1.png",
          "assets/images/withdrawal/2.png",
          "assets/images/withdrawal/3.png",
          "assets/images/withdrawal/4.png",
          "assets/images/withdrawal/5.png",
          "assets/images/withdrawal/6.png",
          "assets/images/withdrawal/7.png",
          "assets/images/withdrawal/8.png",
          "assets/images/withdrawal/9.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Withdraw Money option under home menu.\n",
          "i. Select the Agent’s Account you want to withdraw to (Destination Account).\n",
          "i. Select option to search customer with (example: phone no, ID no, service no).\n"
              "ii. Enter Search option Data.\n",
          "i. Tap of FETCH CUSTOMER DATA button to proceed.\n"
              "ii. If successfully fetched proceed to the next step(swipe for next).\n",
          "i. Select Customer Source Account.\n"
              "ii. Enter the amount the customer wish to withdraw.\n",
          "i. Tap on WITHDRAW CASH button to proceed.",
          "i. Confirm whether the cash withdrawal details are correct.\n"
              "ii. Enter your Agency Banking password.\n"
              "iii. Tap on CONFIRM button to verify the transaction.\n",
          "i. The customer will shortly receive a text message with One Time Password (OTP).\n"
              "ii. Enter the OTP sent to the customer on Harambee Agency Banking application inside the provided boxes as shown above.\n"
              "iii. Tap on the SUBMIT OTP button to verify the OTP and proceed to complete the transaction.\n",
          "i. The transaction will be processed and a Print button of Receipt Displayed.\n"
              "ii. Tab on Print button to Print.\n",
        ]),
    const Menu(
        title: 'Cash Deposit',
        description:
        "This Menu helps the Agent deposit money the the customers Account.",
        strImages: [
          "assets/images/icons/ic_transact_cash_deposit.png",
          "assets/images/deposit/1.png",
          "assets/images/deposit/2.png",
          "assets/images/deposit/3.png",
          "assets/images/deposit/4.png",
          "assets/images/deposit/5.png",
          "assets/images/deposit/6.png",
          "assets/images/deposit/7.png",
          "assets/images/deposit/8.png",
          "assets/images/deposit/9.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Cash Deposit option in the menu.\n",
          "i. Select the Agent's Source Account.\n",
          "i. Select the option to Search Customer with (example: Phone No,).\n"
              "ii. Enter data depending on Search Option Chosen.\n",
          "i. Tab on Fetch Customer Data.\n"
              "ii. If Successful and correct, proceed to step v below.\n",
          "i. Enter the Destination Account of the deposited Funds.\n",
          "i. Enter Amount the customer wish to deposit.\n"
              "ii. Enter the Narration Statement of the Transaction.\n",
          "i. Tap on DEPOSIT CASH button to proceed.\n",
          "i. Confirm that the money deposit details that you entered are correct.\n"
              "ii. Tap on CONFIRM button to proceed.",
          "i. In the event the agent has insufficient balance in the Float source account, they will get a pop-up message about the same. Otherwise, proceed to Step iii below.\niii. Kindly wait for Harambee Agency App to prompt you to print the Receipt.",
          "Proceed to Print the Receipt by tapping on Print button.\n"
        ]),
    const Menu(
        title: 'Account Balance',
        description: "This Menu helps Agent to get Account Balance.",
        strImages: [
          "assets/images/icons/ic_transact_account_balance.png",
          "assets/images/balance/1.png",
          "assets/images/balance/2.png",
          "assets/images/balance/4.png",
          "assets/images/balance/5.png",
          "assets/images/balance/6.png",
          "assets/images/balance/7.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Account Balance Option in the Home Menu.\n",
          "i. Select the option to Search Customer with (example: Phone No).\n"
              "ii. Enter data depending on Search Option Chosen.\n"
              "iii. Tab on Fetch Customer Data.\n"
              "iv. If successfully fetched, proceed to the Step(Swipe).\n",
          "i. Select the Account Type the customer wish to get balance.\n"
              "ii. Tap on the CHECK BALANCE button to proceed.\n",
          "i. Enter your Agency Banking Pin to Proceed.\n",
          "i. The customer will receive an OTP from HARAMBEE SACCO.\n"
              "ii. Enter the OTP in the provided boxes and proceed.\n"
              "iii. Tap on  SUBMIT OTP button to proceed.\n",
          "i. If successful, the customer balance will be displayed on the screen.\n"
              "ii. Tap on PRINT button to print the Receipt."
        ]),
    const Menu(
        title: ' Account Statement',
        description: "This Menu helps Agents to Get Customer Account Statement.",
        strImages: [
          "assets/images/icons/ic_transact_account_statement.png",
          "assets/images/account-statement/1.png",
          "assets/images/account-statement/2.png",
          "assets/images/account-statement/3.png",
          "assets/images/account-statement/4.png",
          "assets/images/account-statement/5.png",
          "assets/images/account-statement/6.png"
        ],
        thesteps: [
          "",
          "i. Tap on My Account on the App Bar to navigate to the menus.\n"
              "ii. Tap on the My Account Statement option in the menus.",
          "i.	Select the option to Search Customer with (example: Phone No).\n"
              "ii.	Enter data depending on Search Option Chosen.\n"
              "iii.	Tab on Fetch Customer Data.\n",
          "i.	If successfully fetched, proceed to the Step below. \n"
              "ii.	Select the Account Type the customer wish to get Statement.\n"
              "iii.	Tap on the CHECK STATEMENT button to proceed.\n",
          "i.	Enter your Agency Banking Password.\n"
              "ii	Tap on the CONFIRM button to verify your Password.\n",
          "i.	Enter the OTP in the provided boxes and tap on SUBMIT button",
          "i.	Tap on Print Receipt to proceed to print."
        ]),
    const Menu(
        title: 'Pay Loan',
        description: " This menu helps agent to Assist customers to pay loans.",
        strImages: [
          "assets/images/icons/ic_transact_loan_payment.png",
          "assets/images/payloan/1.png",
          "assets/images/payloan/2.png",
          "assets/images/payloan/3.png",
          "assets/images/payloan/4.png",
          "assets/images/payloan/5.png",
          "assets/images/payloan/6.png"
        ],
        thesteps: [
          "",
          "i. Tap on the Pay Loan under the Menus.\n",
          "i. Select the Agent’s Source Account.\n"
              "ii. Select the option to Search Customer with (example: Phone No, Id no).\n"
              "iii. Enter data depending on Search Option Chosen.\niv. Tab on Fetch Customer Data.\n",
          "i. Select Loan the Customer would wish to pay.\n",
          "i. Enter the Amount you wish to pay.\n"
              "ii. Tap on the PAY LOAN button to proceed.",
          "i. Confirm that the Loan Payment details that you entered are correct.\n"
              "ii. Enter password to proceed.\n"
              "iii. Tap CONFIRM button to proceed.",
          "i. If successful, Loan Payment request will been made.\nii. A Print Receipt Button will be displayed.\n",
          " Proceed to print the Receipt\n"
        ]),
    const Menu(
        title: 'Member Registration',
        description:
        "This menu enables agents to register new members to Harambee Sacco.",
        strImages: [
          "assets/images/icons/ic_transact_register_member.png",
          "assets/images/reg/1.png",
          "assets/images/reg/2.png",
          "assets/images/reg/4.png",
          "assets/images/reg/5.png",
          "assets/images/reg/6.png",
          "assets/images/reg/7.png",
          "assets/images/reg/8.png",
        ],
        thesteps: [
          "",
          "i. Tap on MY ACCOUNT on the App Bar to navigate to the account menus.\n"
              "ii. Tap on the New Member Registration option under the Menus.\n",
          " i. Enter the full names of the member as they appear in the in any verification details provided.\n"
              " ii. Enter the details below in the respective places.\n"
              "iii. Enter the person’s Phone number.\n"
              "iv. Enter the ID/Military number.\n"
              "v. Enter Date of the Birth.\n"
              "vi. Enter Employment Status.\n"
              "vii. Enter region.\n"
              "viii. Enter the Postal address.\n",
          "i. Upload the passport-sized photograph.\n"
              "ii. Upload the photo of ID card.\n"
              "iii. Tap on CONFIRM button to proceed.\n",
          "i. Confirm that the details entered are correct and proceed to enter your password and tap on confirm",
          "i. Tap on CONFIRM button to proceed\n",
          "i. The customer will shortly receive a text message with One Time Password (OTP).\n"
              "ii. Enter the OTP sent to the customer on Harambee Pesa application inside the provided boxes.\n"
              "iii. Tap on the  SUBMIT OTP button to verify the OTP and proceed to complete the transaction.\n",
          "i. The new member should receive a Message from the Sacco about the registration and awaiting the confirmation from the SACCO.\n"
              "ii. Proceed to on PRINT RECEIPT button to print the member registration details."
        ]),
    const Menu(
        title: 'Float Deposit',
        description:
        "Helps Agent to deposit money from Sacco Account to Float Account",
        strImages: [
          "assets/images/icons/ic_account_float_deposit.png",
          "assets/images/float/1.png",
          "assets/images/float/2.png",
          "assets/images/float/3.png",
          "assets/images/float/4.png",
          "assets/images/float/5.png"
        ],
        thesteps: [
          "",
          "i. Tap on MY ACCOUNT on the App Bar to navigate to the account menus.\nii. Tap on the FLOAT DEPOSIT.\n",
          " i. Choose the Source Account.\nii. Choose the Float Account.\niii. Enter the Amount to Deposit.\niv. Tap on Submit button to proceed",
          "i. Confirm that the details are correct and enter the password\nii. Tap on Confirm button to proceed.",
          "i. Enter the OTP message sent to the Account Holder and Click Confirm to proceed.\n",
          "If successful, the float account will be debited and a Verification message sent to the Agent’s Phone."
        ]),
  ];

}