variables
users
	
	"return collection of user of the trait"

	| result |
	
	result := IdentitySet new.

	self environment ask behaviorsDo: [ :each |
		(each usedTraits includes: self) ifTrue: [ result add: each ] ].
	
	^ result.