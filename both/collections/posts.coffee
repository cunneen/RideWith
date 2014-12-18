Schemas = {}

@Posts = new Meteor.Collection('posts');

Schemas.Posts = new SimpleSchema
	startPoint:
    type: String
    autoform:
      afFieldInput:
        type: 'map'
        # options
        geolocation: true
        autolocate: true

	endPoint:
    type: String
    autoform:
      afFieldInput:
        type: 'map'
        # options
        geolocation: true

#	description:
#		type: String
#    optional: true
#    max: 2000
#		autoform:
#        afFieldInput:
#            type: 'textarea'
#            rows: 5

  repeat:
    type: Boolean

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()


	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Posts.attachSchema(Schemas.Posts)