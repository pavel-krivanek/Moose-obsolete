comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	(self species == anObject species
		and: [self size = anObject size])
		ifFalse: [^ false].

	"avoid allSatisfy: for speed"
	self do: [:each |
		(anObject includes: each)
			ifFalse: [^ false]].
	^ true.