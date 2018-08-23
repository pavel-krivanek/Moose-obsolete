Trait {
	#name : #FmxNGTWithMethods,
	#instVars : [
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType'
	],
	#category : #'FmxNG-Traits-Method'
}

{ #category : #meta }
FmxNGTWithMethods classSide >> annotation [

	<MSEClass: #TWithMethods super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithMethods classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithMethods class>>#generatedSlotNames'.
	^ #(methods)
]

{ #category : #generator }
FmxNGTWithMethods classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithMethods >> addMethod: aMethod [
	methods add: aMethod
]

{ #category : #accessing }
FmxNGTWithMethods >> methods [

	<generated>
	<MSEComment: 'Methods declared by this type.'>
	^ methods
]

{ #category : #accessing }
FmxNGTWithMethods >> methods: anObject [

	<generated>
	methods value: anObject

]

{ #category : #enumeration }
FmxNGTWithMethods >> methodsDo: aBlock [
	self methods do: aBlock
]

{ #category : #accessing }
FmxNGTWithMethods >> methodsGroup [
	<navigation: 'Methods'>
	^MooseGroup
		withAll: self methods
		withDescription: 'Methods from ' , self mooseName
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfAccessorMethods [
	<MSEProperty: #numberOfAccessorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of accessor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfAccessorMethods
		computedAs: [ 
			| noa |
			noa := 0.
			self methods
				do: [ :method | 
					method isPureAccessor
						ifNotNil: [ 
							(method isPureAccessor or: [ (method propertyNamed: #AccessorMethod) isNil not ])
								ifTrue: [ noa := noa + 1 ] ] ].
			noa ]
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfAccessorMethods: aNumber [

	self privateState propertyAt: #numberOfAccessorMethods put: aNumber
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfConstructorMethods [
	<MSEProperty: #numberOfConstructorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of constructor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfConstructorMethods
		computedAs: [ 
			| nc |
			nc := 0.
			self methods
				do: [ :method | 
					method isConstructor
						ifNotNil: [ 
							method isConstructor
								ifTrue: [ nc := 1 ] ] ].
			nc ]
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfConstructorMethods: aNumber [

	self privateState propertyAt: #numberOfConstructorMethods put: aNumber
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfLinesOfCode [

	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a class'>

	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [self methodsGroup sumNumbers: #numberOfLinesOfCode]
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfMessageSends: aNumber [

	self privateState propertyAt: #numberOfMessageSends put: aNumber
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfMethodProtocols [
	<MSEProperty: #numberOfMethodProtocols type: #Number>
	<derived>
	<MSEComment: 'The number of method protocols in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMethodProtocols
		computedAs: [((self methods collect: [:each | each category]) reject: #isNil) asSet size]
]

{ #category : #metrics }
FmxNGTWithMethods >> numberOfMethodProtocols: aNumber [

	self privateState propertyAt: #numberOfMethodProtocols put: aNumber
]

{ #category : #accessing }
FmxNGTWithMethods >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class'>

	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self methods size]
]

{ #category : #accessing }
FmxNGTWithMethods >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #metrics }
FmxNGTWithMethods >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<derived>
	<MSEComment: 'The sum of the complexity in a class'>
			
	^self
		lookUpPropertyNamed: #weightedMethodCount
		computedAs: [self methodsGroup sumNumbers: #cyclomaticComplexity]
]

{ #category : #metrics }
FmxNGTWithMethods >> weightedMethodCount: aNumber [

	self privateState propertyAt: #weightedMethodCount put: aNumber
]
