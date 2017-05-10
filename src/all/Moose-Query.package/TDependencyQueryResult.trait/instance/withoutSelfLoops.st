filtering
withoutSelfLoops
	"exclude dependencies which loop back to the receiver"

	| queryReceiver receiverScope |
	queryReceiver := self receiver.
	receiverScope := queryReceiver yourScope.
	^ self rejectDependencies: [ :dep | (self opposite: dep) asCollection anySatisfy: [ :opp | queryReceiver moosechefEqualsTo: opp moduloScope: receiverScope ] ]