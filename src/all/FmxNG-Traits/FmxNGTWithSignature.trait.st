Trait {
	#name : #FmxNGTWithSignature,
	#instVars : [
		'signature'
	],
	#category : #'FmxNG-Traits-Signature'
}

{ #category : #meta }
FmxNGTWithSignature classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSignature super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSignature classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithSignature class>>#generatedSlotNames'.
	^ #(signature)
]

{ #category : #generator }
FmxNGTWithSignature classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithSignature >> signature [

	<MSEProperty: #signature type: #String>
	<generated>
	<MSEComment: 'Signature of the message being sent'>
	^ signature
]

{ #category : #accessing }
FmxNGTWithSignature >> signature: anObject [

	signature := anObject.
	self resetMooseName.

]
