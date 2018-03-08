Class {
	#name : #FmxNGNamedEntity,
	#superclass : #FmxNGNamedEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxNGNamedEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'instance creation' }
FmxNGNamedEntity class >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> accept: aVisitor [

	aVisitor visitNamedEntity: self
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> addModifier: aString [
	modifiers add: aString
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> addReceivingInvocation: anInvocation [
	receivingInvocations add: anInvocation
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> annotationInstanceNamed: anAnnotationName [
	^ self 
		annotationInstanceNamed: anAnnotationName 
		ifAbsent: [ ]
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> annotationInstanceNamed: anAnnotationName ifAbsent: aBlock [
	^ self annotationInstances 
		detect: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
		ifNone: aBlock
]

{ #category : #accessing }
FmxNGNamedEntity >> belongsTo [
	
	^self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self name: anEntity name copy.
	self isStub: anEntity isStub.
	self modifiers: (anEntity modifiers collect: [:m| m copy])

]

{ #category : #testing }
FmxNGNamedEntity >> hasUniqueMooseNameInModel [
	" all subclasses should call the method: 'resetMooseName' if a change causes the moosename to change "
	^true
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isAbstract: aBoolean [
	^ self modifierSet: aBoolean for: #abstract
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> isAnnotated [
	^ self annotationInstances notEmpty
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> isAnnotatedWith: anAnnotationName [
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isFinal [
	<MSEProperty: #isFinal type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isFinal: aBoolean [
	^ self modifierSet: aBoolean for: #final
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPackage [
	<MSEProperty: #isPackage type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self modifiers includes: #package
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPackage: aBoolean [
	^ self modifierSet: aBoolean for: #package
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPrivate [
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPrivate: aBoolean [
	^ self modifierSet: aBoolean for: #private
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isProtected [
	<MSEProperty: #isProtected type: #Boolean> <derived>
	<MSEComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self modifiers includes: #protected
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isProtected: aBoolean [
	^ self modifierSet: aBoolean for: #protected
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPublic [
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPublic: aBoolean [
	^ self modifierSet: aBoolean for: #public
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> modifierSet: aBoolean for: aSymbol [
	^ aBoolean ifTrue: [self addModifier: aSymbol] ifFalse: [self removeModifier: aSymbol]
]

{ #category : #'Moose-Finder' }
FmxNGNamedEntity >> mooseFinderAnnotationInstancesIn: composite [
	<moosePresentationOrder: 20>
	composite list
			title: 'Annotation instances';
			titleIcon: MooseIcons famixAnnotationInstanceGroup;
			display: [ self annotationInstances ];
			format: #mooseName;
			when: [ self annotationInstances notEmpty ]
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> mooseNameOn: stream [
	self name ifNotNil: [ :n | stream nextPutAll: n ]
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> nameLength [
	<MSEProperty: #nameLength type: #Number>
	<derived>
	<MSEComment: 'The number of characters in the name'>
	
	^self
		lookUpPropertyNamed: #nameLength
		computedAs: [self name size]
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> nameLength: aNumber [
	
	self privateState propertyAt: #nameLength put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> removeModifier: aString [
	modifiers remove: aString ifAbsent: []
]

{ #category : #accessing }
FmxNGNamedEntity >> resetMooseName [
	super resetMooseName.
	self children do: [ :entity | entity resetMooseName ]
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> stub: aBoolean [
	
	self isStub: aBoolean
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> stubFormattedName [
	 ^ self isStub 
		ifTrue: [ Text 
					string: self name
					attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: self name ] 
]
