private
duplicateIndexOf: anObject notAt: anIndex
	"to:do: for speed because some subclasses need this to be fast"
	1 to: anIndex - 1 do: [:i |
		(collection at: i) = anObject
			ifTrue: [^ i]].

	"to:do: for speed because some subclasses need this to be fast"
	anIndex + 1 to: collection size do: [:i |
		(collection at: i) = anObject
			ifTrue: [^ i]].

	^ 0.