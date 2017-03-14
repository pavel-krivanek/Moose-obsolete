*CollectionExtensions
sortAscending: aBlockWithOneArgument
	^ self sorted: [ :x :y |
		(aBlockWithOneArgument value: x) < (aBlockWithOneArgument value: y) ]