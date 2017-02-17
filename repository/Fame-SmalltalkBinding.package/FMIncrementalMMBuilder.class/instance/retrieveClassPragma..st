private-pragmas
retrieveClassPragma: aClass
	| pragma |
	pragma := Pragma allNamed: #MSEClass:super: in: aClass class.
	pragma isEmpty
		ifTrue: [ self error: 'No Fame pragma ' , aClass name ].
	pragma := pragma first.
	^ pragma