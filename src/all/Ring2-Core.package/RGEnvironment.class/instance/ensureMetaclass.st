cleaning
ensureMetaclass

	| aMetaclass |
	
	aMetaclass := self ask behaviorNamed: #Metaclass.
	aMetaclass ifNotNil: [ ^ aMetaclass ].
	
	aMetaclass := self ask behaviors detect: [ :each | 
		(each propertyNamed: #Metaclass ifAbsent: [ false ]) ] ifNone: [ nil ].
	aMetaclass ifNotNil: [ ^ aMetaclass ].

	aMetaclass := self ensureClassNamed: #Metaclass.	
	
	aMetaclass propertyNamed: #Metaclass put: true.	
	
	^ aMetaclass.