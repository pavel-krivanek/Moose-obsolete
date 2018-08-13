accessing - model
tagsForClasses
	"Retrieves the traits defined in the receiver"

	| allTags |
	allTags := IdentitySet new.
	self tagsForClassesDo: [ :each | allTags add: each].
	^ allTags asArray
