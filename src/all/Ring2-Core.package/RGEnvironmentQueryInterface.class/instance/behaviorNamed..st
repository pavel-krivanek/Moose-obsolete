accessing
behaviorNamed: aSymbol

	^ self behaviorNamed: aSymbol ifAbsent: [ nil]
