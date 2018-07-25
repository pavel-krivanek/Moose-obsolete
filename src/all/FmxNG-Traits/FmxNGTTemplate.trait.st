Trait {
	#name : #FmxNGTTemplate,
	#instVars : [
		'#templateOwner => FMOne type: #FmxNGTWithTemplates opposite: #templates',
		'#templateUsers => FMMany type: #FmxNGTTemplateUser opposite: #template'
	],
	#category : #'FmxNG-Traits-Template'
}

{ #category : #meta }
FmxNGTTemplate classSide >> annotation [

	<MSEClass: #TTemplate super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTemplate classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTemplate class>>#generatedSlotNames'.
	^ #(templateUsers templateOwner)
]

{ #category : #generator }
FmxNGTTemplate classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTemplate >> templateOwner [

	<generated>
	^ templateOwner
]

{ #category : #accessing }
FmxNGTTemplate >> templateOwner: anObject [

	<generated>
	templateOwner := anObject

]

{ #category : #accessing }
FmxNGTTemplate >> templateUsers [

	<generated>
	^ templateUsers
]

{ #category : #accessing }
FmxNGTTemplate >> templateUsers: anObject [

	<generated>
	templateUsers value: anObject

]
