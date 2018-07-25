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
