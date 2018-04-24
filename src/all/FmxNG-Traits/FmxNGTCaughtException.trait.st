"
This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.
"
Trait {
	#name : #FmxNGTCaughtException,
	#category : #'FmxNG-Traits-Traits'
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
