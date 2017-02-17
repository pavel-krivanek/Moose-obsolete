accessing
parentOnLevel: aLevel
	"Returns the node that is on given level in this nodes ancestry.
	Returns nil if this node is on the same or on a deeper level than given one 
	or if given level does not exist in the graph (i.e. greater level than leaf nodes)."
	| levelDifference currentNode |
	
	self assert: aLevel >= 0 description: 'Smalles possible level is 0 (root nodes), negative levels do not exists. Given level was: ', aLevel asString.
	
	self level <= aLevel ifTrue: [ ^ nil ].
	
	levelDifference := self level - aLevel.
	currentNode := self.

	[levelDifference ~= 0] whileTrue: [
		currentNode := currentNode parent.	
		levelDifference := levelDifference - 1.
	].

	^ currentNode.
	
