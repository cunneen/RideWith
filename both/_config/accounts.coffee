Accounts.config
  sendVerificationEmail : true

if Meteor.isClient
  Meteor.startup ->
    if Config.username
      AccountsEntry.config
        homeRoute: '/'
        dashboardRoute: '/dashboard'
        profileRoute: 'profile'
        passwordSignupFields: 'USERNAME_AND_EMAIL'
    else
      AccountsEntry.config
        homeRoute: '/'
        dashboardRoute: '/dashboard'
        profileRoute: 'profile'
        passwordSignupFields: 'EMAIL_ONLY'
        extraSignUpFields: [{             # Add extra signup fields on the signup page
          field: "botTrap",                           # The database property you want to store the data in
          label: "Type \"I am human\".", # The html lable for the field
          placeholder: "To prove you are human.", # A placeholder for the field
          type: "text",                            # The type of field you want
          required: true                           # Adds html 5 required property if true
        }]
