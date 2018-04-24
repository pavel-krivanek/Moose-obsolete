Trait {
	#name : #FmxNGTWithSourceAnchor,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithSourceAnchor classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceAnchor super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSourceAnchor classSide >> generatedSlotNames [
	<generated>
	^ #(sourceAnchor)
]

{ #category : #generator }
FmxNGTWithSourceAnchor classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithSourceAnchor >> sourceAnchor [

	<generated>
	<MSEComment: 'SourceAnchor entity linking to the original source code for this entity'>
	^ sourceAnchor
]

{ #category : #accessing }
FmxNGTWithSourceAnchor >> sourceAnchor: anObject [

	<generated>
	sourceAnchor := anObject

]
