running
checkClass: aContext
	| class pragmas pragma metaName |

	class := aContext.
	pragmas := Pragma allNamed: #MSEClass:super: in: class.
	pragmas ifEmpty: [ ^ self ].
	pragmas size > 1 ifTrue: [ result addClass: class. ^ self ].
	
	pragma := pragmas first.
	metaName := pragma argumentAt: 1.
	(pragma method pragmaAt: #package:)
		ifNotNil: [ :packagePragma ||packageName| 
			packageName := packagePragma argumentAt: 1.
			packageName , metaName = class instanceSide name
				ifFalse: [ result addClass: class selector: pragma selector ]]
		ifNil: [ 
			"this happens if the package: pragma is missing"
			result addClass: class selector: pragma selector ]