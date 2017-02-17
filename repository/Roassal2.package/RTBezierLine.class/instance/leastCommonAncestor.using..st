control points
leastCommonAncestor: anEdge using: followBlock
	| a b aNodes bNodes sharedNode |
	a := anEdge from.
	b := anEdge to.
	a = b ifTrue: [ ^ a ].
	aNodes := self getFollowersOf: a using: followBlock.
	bNodes := self getFollowersOf: b using: followBlock.
	sharedNode := nil.
	a := aNodes removeLast.
	b := bNodes removeLast.
	
	[ a == b ] whileTrue: [ 
		sharedNode := a.
		sharedNode ifNil: [ ^ nil ].
		a := aNodes ifEmpty: [ nil ] ifNotEmpty: [aNodes removeLast].
		b := bNodes ifEmpty: [ nil ] ifNotEmpty: [bNodes removeLast]. ].
	^ sharedNode.