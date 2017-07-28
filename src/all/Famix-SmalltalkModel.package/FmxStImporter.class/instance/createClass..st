private-entity-creation
createClass: aClass 
	| class inheritance |
	
	importingContext shouldMergeClassAndMetaclass 
		ifFalse: [ class := self basicClassCreation: aClass ]
		ifTrue: 
			[ aClass isMeta 
				ifTrue: [ class := self ensureClass: aClass soleInstance. classes at: aClass put: class ]
				ifFalse: [ class := self basicClassCreation: aClass ] ].
	importingContext shouldImportPackage ifTrue: 
		[ class parentPackage: (self ensurePackage: (aClass package)) ].
	importingContext shouldImportInheritance ifTrue: 
		[ (aClass superclass ~~ nil and: 
			[ importingContext shouldMergeClassAndMetaclass 
				ifFalse: [ true ]
				ifTrue: [ aClass isMeta not ] ]) 
					ifTrue: [ inheritance := self addEntity: FmxTInheritance new.
							inheritance superclass: (self ensureClass: aClass superclass).
							inheritance subclass: class ]
		].
	aClass isMeta ifFalse: [ self ensureClass: aClass class ].
	importingContext shouldImportAttribute
		ifTrue:
			[aClass instVarNames
				do: [:eachName | self ensureAttribute: eachName for: aClass].
			"since the classVar of a class are not the same as the classVar of the class class"
			
			"with latest pharo class classVar = class class classVar so we should not need that anymore"
			aClass isMeta 
				ifTrue: [aClass soleInstance classVarNames
							do: [:eachClassVarName | self ensureClassVarAttribute: eachClassVarName for: aClass soleInstance]]
				ifFalse: [ aClass classVarNames
							do: [:eachClassVarName | self ensureClassVarAttribute: eachClassVarName for: aClass]]].
	^ class