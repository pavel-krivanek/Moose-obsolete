comparing
= aParser
	^ self == aParser or: [ self name notNil and: [ self name = aParser name ] ]