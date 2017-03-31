private
duplicateIndexOf: aNode notAt: anIndex
	"like the superclass version, but it considers nodes with
	the same name to be duplicates"
	1 to: anIndex - 1 do: [:i | | node |
		(node := collection at: i) name = aNode name
			ifTrue: [^ i]].

	anIndex + 1 to: collection size do: [:i | | node |
		(node := collection at: i) name = aNode name
			ifTrue: [^ i]].

	^ 0.