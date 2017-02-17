filtering
withoutSelfLoops
	"exclude objects that match the receiver (modulo the scope)"

	|  queryReceiver receiverScope |
	queryReceiver := self receiver.
	receiverScope := queryReceiver yourScope.
	"cannot use rejectDependencies: here because elements are entities"
	^ self newObjectResultWith: (storage reject: [ :obj |  queryReceiver moosechefEqualsTo: obj moduloScope: receiverScope ]).
