private-entity-creation
scopeOfClass: aClass
	aClass ifNil: [ ^ nil ].
	^ scopes at: aClass ifAbsentPut: [ SmalltalkScope extend: (self scopeOfClass: aClass superclass) ]