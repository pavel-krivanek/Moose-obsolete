Trait {
	#name : #FmxNGTTemplateUser,
	#instVars : [
		'#template => FMOne type: #FmxNGTTemplate opposite: #templateUsers'
	],
	#category : #'FmxNG-Traits-Template'
}

{ #category : #meta }
FmxNGTTemplateUser classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTemplateUser super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTemplateUser classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTemplateUser class>>#generatedSlotNames'.
	^ #(template)
]

{ #category : #generator }
FmxNGTTemplateUser classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTemplateUser >> template [

	<generated>
	^ template
]

{ #category : #accessing }
FmxNGTTemplateUser >> template: anObject [

	<generated>
	template := anObject

]
