Trait {
	#name : #FmxNGTWithDeclaredExceptions,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithDeclaredExceptions classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithDeclaredExceptions super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithDeclaredExceptions classSide >> generatedSlotNames [
	<generated>
	^ #(declaredExceptions)
]

{ #category : #generator }
FmxNGTWithDeclaredExceptions classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptions >> declaredExceptions [

	<generated>
	^ declaredExceptions
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptions >> declaredExceptions: anObject [

	<generated>
	declaredExceptions value: anObject

]
