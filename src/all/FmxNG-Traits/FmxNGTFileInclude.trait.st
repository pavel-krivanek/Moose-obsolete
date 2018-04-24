Trait {
	#name : #FmxNGTFileInclude,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTFileInclude classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFileInclude super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFileInclude classSide >> generatedSlotNames [
	<generated>
	^ #(target source)
]

{ #category : #generator }
FmxNGTFileInclude classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFileInclude >> source [

	<generated>
	^ source
]

{ #category : #accessing }
FmxNGTFileInclude >> source: anObject [

	<generated>
	source := anObject

]

{ #category : #accessing }
FmxNGTFileInclude >> target [

	<generated>
	^ target
]

{ #category : #accessing }
FmxNGTFileInclude >> target: anObject [

	<generated>
	target := anObject

]
