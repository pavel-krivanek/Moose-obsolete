enumerating
selectAllWithType: aSmalltalkClass 
	^ byType 
		at: aSmalltalkClass
		ifAbsent: [ OrderedCollection new ]