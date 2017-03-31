comparing
= aFunctionSet
	self == aFunctionSet
		ifTrue: [^ true].

	(self species == aFunctionSet species
		and: [self size = aFunctionSet size])
		ifFalse: [^ false].

	^ self allSatisfy: [:each | aFunctionSet includes: each].