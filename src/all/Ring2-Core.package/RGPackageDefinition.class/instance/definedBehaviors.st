queries - behaviors
definedBehaviors

	| allDefinedBehaviors |
	allDefinedBehaviors := IdentitySet new.
	self definedBehaviorsDo: [ :each | allDefinedBehaviors add: each].
	^ allDefinedBehaviors asArray
	