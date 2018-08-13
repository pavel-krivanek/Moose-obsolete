as yet unclassified
behaviors
	"Retrieves the traits defined in the receiver"

	| allBehaviors |
	allBehaviors := IdentitySet new.
	self behaviorsDo: [ :each | allBehaviors add: each].
	^ allBehaviors asArray
