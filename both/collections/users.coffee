Schemas = {}

Schemas.UserProfile = new SimpleSchema(

  picture:
    type: String
    optional:true
    label: 'Profile picture'
    autoform:
      afFieldInput:
        type: 'fileUpload'
        collection: 'ProfilePictures'

  firstName:
    type: String
    optional: true

  lastName:
    type: String
    optional: true
    
  mobilePhoneNumber:
    type: String
    optional: true
  
  myHomeLocation:
    type: String
    optional: true
    
  yourTwitterHandle:
    type: String
    optional: true
    
  bio:
    type: String
    optional: true
    autoform:
      rows: 4

)

Schemas.User = new SimpleSchema(

  username:
    type: String
    regEx: /^[a-z0-9A-Z_]{3,15}$/
    optional: true

  
  emails:
    type: [Object]
    optional: false

  "emails.$.address":
    type: String
    regEx: SimpleSchema.RegEx.Email

  "emails.$.verified":
    type: Boolean

  createdAt:
    type: Date

  profile:
    type: Schemas.UserProfile
    optional: false

  services:
    type: Object
    optional: true
    blackbox: true

  roles:
    type: [String]
    blackbox: true
    optional: true
)

Meteor.users.attachSchema Schemas.User

# Export schemas
@StarterSchemas = Schemas
