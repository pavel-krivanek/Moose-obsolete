as yet unclassified
includesClassNamed: aSymbol 

	self globalVariablesDo: [ :var |
		var name = aSymbol ifTrue: [ ^ true ] ].

	^ self behaviorsDictionary 
		at: aSymbol asSymbol 
		ifPresent: [ :element | true ]
		ifAbsent: [ false ]
	"	
	self behaviorsDo: [:each |
		(each name = aSymbol) ifTrue: [ ^ each ] ].
	
	^ nil
	"