public - recursive nodes
recurTo: anObject
	"This method is used to recur"
	self assert: [ recurrentBlock notNil ] description: 'The #recurTo: message has to be called within a recursiveNodes:forEach: call'.
	recurrentBlock value: anObject