Trait {
	#name : #FmxNGTWithDeclaredExceptions,
	#instVars : [
		'#declaredExceptions => FMMany type: #FmxNGTDeclaredException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits-DeclaredException'
}

{ #category : #meta }
FmxNGTWithDeclaredExceptions classSide >> annotation [

	<MSEClass: #TWithDeclaredExceptions super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithDeclaredExceptions classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithDeclaredExceptions class>>#generatedSlotNames'.
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
	<MSEComment: 'The exceptions declared by the method'>
	^ declaredExceptions
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptions >> declaredExceptions: anObject [

	<generated>
	declaredExceptions value: anObject

]
