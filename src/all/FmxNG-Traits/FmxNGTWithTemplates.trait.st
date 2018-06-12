Trait {
	#name : #FmxNGTWithTemplates,
	#instVars : [
		'#templates => FMMany type: #FmxNGTTemplate opposite: #templateOwner'
	],
	#category : #'FmxNG-Traits-Template'
}

{ #category : #meta }
FmxNGTWithTemplates classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTemplates super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTemplates classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithTemplates class>>#generatedSlotNames'.
	^ #(templates)
]

{ #category : #generator }
FmxNGTWithTemplates classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithTemplates >> templates [

	<generated>
	^ templates
]

{ #category : #accessing }
FmxNGTWithTemplates >> templates: anObject [

	<generated>
	templates value: anObject

]
