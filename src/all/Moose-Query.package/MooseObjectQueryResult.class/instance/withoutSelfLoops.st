filtering
withoutSelfLoops
	"exclude objects that match the receiver (modulo the scope)"

	^ self newObjectResultWith: (storage reject: [ :obj | self receiver moosechefEqualsTo: obj moduloScope: self receiver class ])