enumerating
elementsDo: aBlock
	"#to:do: for performance, because so many methods rely on this"
	1 to: collection size do: [:i | | node |
		(node := collection at: i) isElement
			ifTrue: [aBlock value: node]]