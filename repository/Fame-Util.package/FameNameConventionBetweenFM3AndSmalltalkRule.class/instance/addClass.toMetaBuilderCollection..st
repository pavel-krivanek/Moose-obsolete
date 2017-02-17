private
addClass: aClass toMetaBuilderCollection: aCollectionOfClasses

	|  classToAdd pragma compiledMethod |
	"we add the class itself"
	aCollectionOfClasses addIfNotPresent:  aClass  .
	
	"We add all classes described in properties pargmas :"
	aClass methodDict valuesDo: [:each | 
		
		pragma := Pragma inMethod: each
		named: #(#MSEProperty:type:opposite: #MSEProperty:type: ).
		pragma ifNotNil:[
			classToAdd := (pragma	argumentAt: 2) asString.
			(#('String' 'Number' 'Boolean' 'Object'  ) includes: classToAdd)
				ifFalse:  [
					classToAdd = 'FM3.Property'
						ifTrue: [
							(aCollectionOfClasses includes: FM3PropertyDescription)
							ifFalse: [self addClass: FM3PropertyDescription toMetaBuilderCollection: aCollectionOfClasses].  ]
						ifFalse: [
							
							classToAdd := Smalltalk classNamed: classToAdd.
							(aCollectionOfClasses includes: classToAdd)
							ifFalse: [self addClass: classToAdd toMetaBuilderCollection: aCollectionOfClasses. ]].
					
			]
		]].
	"we add the superclass and all classes linked to it: "
	compiledMethod := ( aClass classSide compiledMethodAt: #annotation ifAbsent: [nil] ).
	compiledMethod ifNotNil: [
		pragma := compiledMethod pragmaAt: #MSEClass:super: .
			pragma ifNotNil: [
				|argument|
				argument := pragma argumentAt: 2.
				argument = #Object ifFalse: [
					(argument includes: $.)
					ifTrue:[
						classToAdd := ''.
						(argument substrings: #($.)) 
							do: [:each | classToAdd := classToAdd,each].
						classToAdd := 	(Smalltalk classNamed: classToAdd)		
					]
					ifFalse:[classToAdd := (Smalltalk classNamed: argument asString).].
					
					(aCollectionOfClasses  includes: classToAdd) ifFalse:
						[self addClass: classToAdd toMetaBuilderCollection: aCollectionOfClasses].
				].
			].
	].
	