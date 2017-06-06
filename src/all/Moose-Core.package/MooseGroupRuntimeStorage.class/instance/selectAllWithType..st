enumerating
selectAllWithType: aSmalltalkClass
	^ byType at: aSmalltalkClass ifAbsent: [ self class byTypeDefaultCollection ]