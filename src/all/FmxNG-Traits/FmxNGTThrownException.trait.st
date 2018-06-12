"
This is an exception explicitly thrown by a method.
"
Trait {
	#name : #FmxNGTThrownException,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'FmxNG-Traits-ThrownException'
}

{ #category : #meta }
FmxNGTThrownException classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TThrownException super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTThrownException classSide >> generatedSlotNames [
	<generated>
	'FmxNGTThrownException class>>#generatedSlotNames'.
	^ #(definingEntity)
]

{ #category : #generator }
FmxNGTThrownException classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTThrownException >> definingEntity [

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FmxNGTThrownException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject

]
