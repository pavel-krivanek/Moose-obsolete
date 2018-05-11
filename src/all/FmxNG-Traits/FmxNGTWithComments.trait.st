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
