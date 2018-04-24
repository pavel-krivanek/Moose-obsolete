Trait {
	#name : #FmxNGTWithExceptions,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithExceptions classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithExceptions super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithExceptions classSide >> generatedSlotNames [
	<generated>
	^ #(exceptions)
]

{ #category : #generator }
FmxNGTWithExceptions classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithExceptions >> exceptions [

	<generated>
	<MSEComment: 'Exceptions which class is myself.'>
	^ exceptions
]

{ #category : #accessing }
FmxNGTWithExceptions >> exceptions: anObject [

	<generated>
	exceptions value: anObject

]
