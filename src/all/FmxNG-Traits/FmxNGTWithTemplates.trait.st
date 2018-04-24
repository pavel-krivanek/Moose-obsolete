Trait {
	#name : #FmxNGTWithTemplates,
	#category : #'FmxNG-Traits-Traits'
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
