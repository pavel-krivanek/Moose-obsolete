accessing - model
tagsForMethods
	"Retrieves the traits defined in the receiver"

	| allTags |
	allTags := IdentitySet new.
	self tagsForMethodsDo: [ :each | allTags add: each].
	^ allTags asArray
