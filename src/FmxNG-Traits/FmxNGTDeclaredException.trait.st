"
This is an exception explicitly declared as being thrown by a method.
"
Trait {
	#name : #FmxNGTDeclaredException,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'FmxNG-Traits-DeclaredException'
}

{ #category : #meta }
FmxNGTDeclaredException classSide >> annotation [

	<MSEClass: #TDeclaredException super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTDeclaredException classSide >> generatedSlotNames [
	<generated>
	'FmxNGTDeclaredException class>>#generatedSlotNames'.
	^ #(definingEntity)
]

{ #category : #generator }
FmxNGTDeclaredException classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTDeclaredException >> definingEntity [

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FmxNGTDeclaredException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject

]
