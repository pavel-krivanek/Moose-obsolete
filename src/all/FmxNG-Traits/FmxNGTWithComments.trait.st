Trait {
	#name : #FmxNGTWithComments,
	#instVars : [
		'#comments => FMMany type: #FmxNGTComment opposite: #container'
	],
	#category : #'FmxNG-Traits-Comment'
}

{ #category : #meta }
FmxNGTWithComments classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithComments super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithComments classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithComments class>>#generatedSlotNames'.
	^ #(comments)
]

{ #category : #generator }
FmxNGTWithComments classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithComments >> comments [

	<generated>
	<MSEComment: 'list of comments defined in the entity'>
	^ comments
]

{ #category : #accessing }
FmxNGTWithComments >> comments: anObject [

	<generated>
	comments value: anObject

]

{ #category : #accessing }
FmxNGTWithComments >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<derived>
	<MSEComment: 'The number of comments in a class'>

	^ self lookUpPropertyNamed: #numberOfComments computedAs: [
		self comments size + 
		(self methods asArray inject: 0 into: [:sum : el| 
			el numberOfComments + sum ]) ]
]

{ #category : #accessing }
FmxNGTWithComments >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]
