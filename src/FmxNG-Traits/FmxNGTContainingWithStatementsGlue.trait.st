Trait {
	#name : #FmxNGTContainingWithStatementsGlue,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTContainingWithStatementsGlue classSide >> annotation [

	<MSEClass: #TContainingWithStatementsGlue super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generation }
FmxNGTContainingWithStatementsGlue classSide >> generateMethodsFor: aBuilderClass in: aRingClass [

	| withStatementsUsers links selectedLinkNames |
	
	withStatementsUsers := aBuilderClass builder classes select: [ :each | each directlyUses: (aBuilderClass builder traitNamed: #TWithStatements) ].
	links := (withStatementsUsers flatCollect: [ :each | each containerProperties collect: #otherSide ]) collectAsSet: #name.

	selectedLinkNames := (((aBuilderClass allTraits flatCollect: #properties) select: [ :each | links includes: each name ]) collect: #name) asArray.
	
	aRingClass instanceSide compile: ('{1}\\	<generated>\	^ {2}' withCRs format: { #tContainingWithStatementsLinks. selectedLinkNames printString }) 
		classified: #'builder support'.

]

{ #category : #generator }
FmxNGTContainingWithStatementsGlue classSide >> generatedSlotNames [
	<generated>
	'FmxNGTContainingWithStatementsGlue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTContainingWithStatementsGlue classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #metrics }
FmxNGTContainingWithStatementsGlue >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [
			| group |
			group := MooseGroup
				withAll: (self children select: [ :child | child usesTrait: FmxNGTWithStatements])
				withDescription: 'Entities from ' , self mooseName.
			group sumNumbers: #numberOfStatements ] 
]

{ #category : #metrics }
FmxNGTContainingWithStatementsGlue >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #metrics }
FmxNGTContainingWithStatementsGlue >> numberOfStatementsWithoutMQ [
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [
			self tContainingWithStatementsLinks sum: [ :selector | 
				| group |
				group := MooseGroup
					withAll: (self perform: selector)
					withDescription: 'Entities from ' , self mooseName.
				group sumNumbers: #numberOfStatements ] ]
]
