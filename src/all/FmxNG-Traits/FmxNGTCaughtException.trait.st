"
This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.
"
Trait {
	#name : #FmxNGTCaughtException,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'FmxNG-Traits-CaughtException'
}

{ #category : #meta }
FmxNGTCaughtException classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TCaughtException super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTCaughtException classSide >> generatedSlotNames [
	<generated>
	'FmxNGTCaughtException class>>#generatedSlotNames'.
	^ #(definingEntity)
]

{ #category : #generator }
FmxNGTCaughtException classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTCaughtException >> definingEntity [

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FmxNGTCaughtException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject

]
