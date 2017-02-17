filtering
withoutSelfLoops
	"exclude dependencies which loop back to the receiver"

	|  queryReceiver receiverScope |
	queryReceiver := self receiver.
	receiverScope := queryReceiver yourScope.
	^ self rejectDependencies: [ :dep |  |opposite| opposite := (self opposite: dep).
		opposite isCollection ifFalse: [ opposite:= { opposite } ].
		opposite
		 anySatisfy: [:opp | queryReceiver moosechefEqualsTo: opp moduloScope: receiverScope ]]