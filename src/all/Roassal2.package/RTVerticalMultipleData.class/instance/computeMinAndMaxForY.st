min and max
computeMinAndMaxForY
	| computed |
	computed := groupedElements collect: [ :g | (g collect: y) sum ].
	self assert: [ computed allSatisfy: [ :obj | obj isKindOf: Number ] ] description: 'You have provided objects that are not number. Please adjust what you provide to #points: #x: and #y:'.
	minY := computed min.
	maxY := computed max.
	
	(minY < 0 and: [ maxY < 0 ]) ifTrue: [ maxY := 0 ].
	(minY > 0 and: [ maxY > 0 ]) ifTrue: [ minY := 0 ].
	