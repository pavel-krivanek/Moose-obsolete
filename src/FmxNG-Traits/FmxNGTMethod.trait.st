"
FAMIXMethod represents a behaviour in an object-oriented language.

A FAMIXMethod is always contained in a parentType.
"
Trait {
	#name : #FmxNGTMethod,
	#instVars : [
		'#category',
		'#hasClassScope',
		'#isAbstract',
		'#isPublic',
		'#kind',
		'#parentType => FMOne type: #FmxNGTWithMethods opposite: #methods',
		'#timeStamp'
	],
	#category : #'FmxNG-Traits-Method'
}

{ #category : #meta }
FmxNGTMethod classSide >> annotation [

	<MSEClass: #TMethod super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTMethod classSide >> generatedSlotNames [
	<generated>
	'FmxNGTMethod class>>#generatedSlotNames'.
	^ #(category hasClassScope timeStamp parentType kind)
]

{ #category : #generator }
FmxNGTMethod classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTMethod >> category [

	<MSEProperty: #category type: #String>
	<generated>
	<MSEComment: 'Category of the method'>
	^ category
]

{ #category : #accessing }
FmxNGTMethod >> category: anObject [

	<generated>
	category := anObject

]

{ #category : #'Famix-Implementation' }
FmxNGTMethod >> computeNumberOfLinesOfCode [
	self hasSourceAnchor 
		ifTrue: [ ^ self sourceAnchor lineCount ].
	^ (self sourceText = '')
			ifTrue: [ self notExistentMetricValue ]
			ifFalse: [ self sourceText lineCount ]
]

{ #category : #metrics }
FmxNGTMethod >> cyclomaticComplexity [
	<MSEProperty: #cyclomaticComplexity type: #Number>
	<MSEComment: 'The number of linear-independent paths through a method.'>
	^ self
		lookUpPropertyNamed:  #cyclomaticComplexity
		computedAs: [ self notExistentMetricValue ]
]

{ #category : #metrics }
FmxNGTMethod >> cyclomaticComplexity: aNumber [

	self privateState propertyAt: #cyclomaticComplexity put: aNumber
]

{ #category : #accessing }
FmxNGTMethod >> hasClassScope [

	<MSEProperty: #hasClassScope type: #Boolean>
	<generated>
	<MSEComment: 'True if class-side method'>
	^ hasClassScope
]

{ #category : #accessing }
FmxNGTMethod >> hasClassScope: anObject [

	<generated>
	hasClassScope := anObject

]

{ #category : #testing }
FmxNGTMethod >> isConstant [
	<MSEProperty: #isConstant type: #Boolean>
	<derived>
	<MSEComment: 'True if the method simply returns a constant'>
	^#constant = self kind
]

{ #category : #testing }
FmxNGTMethod >> isConstructor [
	<MSEProperty: #isConstructor type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is a constructor of the class'>

	^ #constructor = self kind or: [ 
		self privateState propertyAt: #isConstructor ifAbsent: [false] ]
]

{ #category : #testing }
FmxNGTMethod >> isConstructor: aBoolean [
	aBoolean 
		ifTrue: [ self kind: #constructor ]
		ifFalse: [ 
			self isConstructor ifTrue: [ self kind: nil ] ]
]

{ #category : #testing }
FmxNGTMethod >> isGetter [
	<MSEProperty: #isGetter type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is a getter of an attribute'>
	
	^#getter = self kind
]

{ #category : #testing }
FmxNGTMethod >> isMethod [

	<generated>
	^ true
]

{ #category : #testing }
FmxNGTMethod >> isPureAccessor [
	^self isGetter
		or: [self isSetter
		or: [self privateState propertyAt: #isPureAccessor ifAbsent: [false]]]
]

{ #category : #testing }
FmxNGTMethod >> isSetter [
	<MSEProperty: #isSetter type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is a setter on an attribute'>

	^#setter = self kind
]

{ #category : #accessing }
FmxNGTMethod >> kind [

	<MSEProperty: #kind type: #String>
	<generated>
	<MSEComment: 'Tag indicating a setter, getter, constant, constructor, or abstract method'>
	^ kind
]

{ #category : #accessing }
FmxNGTMethod >> kind: anObject [

	<generated>
	kind := anObject

]

{ #category : #'Famix-Implementation' }
FmxNGTMethod >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of lines of code in a method.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self computeNumberOfLinesOfCode ]
]

{ #category : #'Famix-Implementation' }
FmxNGTMethod >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #metrics }
FmxNGTMethod >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message from a method'>
	^ self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [ self notExistentMetricValue ]
]

{ #category : #metrics }
FmxNGTMethod >> numberOfMessageSends: aNumber [

	self privateState propertyAt: #numberOfMessageSends put: aNumber
]

{ #category : #accessing }
FmxNGTMethod >> parentType [

	<generated>
	<MSEComment: 'Type declaring the method. It provides the implementation for belongsTo.'>
	<container>

	^ parentType
]

{ #category : #accessing }
FmxNGTMethod >> parentType: anObject [

	parentType := anObject.
	self resetMooseName.

]

{ #category : #testing }
FmxNGTMethod >> parentTypeIsStub [

	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

{ #category : #accessing }
FmxNGTMethod >> timeStamp [

	<MSEProperty: #timeStamp type: #String>
	<generated>
	<MSEComment: 'TimeStamp of the method with author and time of the last change'>
	^ timeStamp
]

{ #category : #accessing }
FmxNGTMethod >> timeStamp: anObject [

	<generated>
	timeStamp := anObject

]
