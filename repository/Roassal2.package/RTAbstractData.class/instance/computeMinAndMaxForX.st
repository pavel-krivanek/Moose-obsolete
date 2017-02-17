min and max
computeMinAndMaxForX
	| computed |
	computed := elements collect: x.
	self assert: [ computed allSatisfy: [ :obj | obj isKindOf: Number ] ] description: 'You have provided objects that are not number. Please adjust what you provide to #points: #x: and #y:'.
	minX := computed min.
	maxX := computed max.

	(minX < 0 and: [ maxX < 0 ]) ifTrue: [ maxX := 0 ].
	"Only set the minX if we want to include the origin."
	self builder hasOrigin ifTrue: [
		(minX > 0 and: [ maxX > 0 ]) ifTrue: [ minX := 0 ]
	].
	
	"We do this to make sure that the bar on the right hand side is not on the right axisX extremity"
	"(self dataSets anySatisfy: #shouldHaveBars) ifTrue: [ maxX := maxX + 1 ]"
	

