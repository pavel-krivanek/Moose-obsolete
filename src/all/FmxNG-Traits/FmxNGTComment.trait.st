"
FAMIXComment represents one instance of a comment (in the sense of programming language comments) for any Famix sourced entity. The commented sourced entity is called the container in the FAMIX model.
"
Trait {
	#name : #FmxNGTComment,
	#instVars : [
		'#container => FMOne type: #FmxNGTWithComments opposite: #comments',
		'#content'
	],
	#category : #'FmxNG-Traits-Comment'
}

{ #category : #meta }
FmxNGTComment classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TComment super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTComment classSide >> generatedSlotNames [
	<generated>
	^ #(content container)
]

{ #category : #generator }
FmxNGTComment classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTComment >> container [

	<generated>
	<MSEComment: 'Source code entity containing the comment'>
	^ container
]

{ #category : #accessing }
FmxNGTComment >> container: anObject [

	container := anObject.
	self resetMooseName.

]

{ #category : #accessing }
FmxNGTComment >> content [

	<MSEProperty: #content type: #String>
	<generated>
	<MSEComment: 'Content of the comment as a String'>
	^ content
]

{ #category : #accessing }
FmxNGTComment >> content: anObject [

	<generated>
	content := anObject

]
