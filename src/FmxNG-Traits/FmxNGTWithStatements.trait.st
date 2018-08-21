Trait {
	#name : #FmxNGTWithStatements,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithStatements classSide >> annotation [

	<MSEClass: #TWithStatements super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithStatements classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithStatements class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTWithStatements classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #metrics }
FmxNGTWithStatements >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<MSEComment: 'The number of statements in a method'>
	^ self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [ self notExistentMetricValue ] 
]

{ #category : #metrics }
FmxNGTWithStatements >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]
