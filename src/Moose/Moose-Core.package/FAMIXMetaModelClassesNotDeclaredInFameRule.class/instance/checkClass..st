running
checkClass: aContext
	|class  pragmas |
	class := aContext.

	(self metaModelClasses includes: class instanceSide)
		ifTrue: [
			pragmas := Pragma allNamed: #MSEClass:super: in: class.
			pragmas ifEmpty: [
				class isMeta ifTrue: [ result addClass: class ].
			^ self ].
		pragmas size > 1 ifTrue: [ result addClass: class. ^ self ].
	]