resolving
resolveOn: anArray
	^ anArray size = 1
		ifTrue: [ anArray first ]
		ifFalse: [ anArray ]