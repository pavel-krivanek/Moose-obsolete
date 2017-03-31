private
indexOfAttribute: aName
	"to:do: for speed, because this is used for attribute lookup"
	1 to: collection size do: [:i | | node |
		(node := collection at: i) name = aName
			ifTrue: [^ i]].
	^ 0.