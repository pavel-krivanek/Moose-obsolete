comparing
= anotherSegment
	"Answer true if the receiver's species, from and to matches anotherSegment."

	^ self species = anotherSegment species
		ifTrue: [ ^ from = anotherSegment from and: [ to = anotherSegment to ] ]
		ifFalse: [ ^ false ]