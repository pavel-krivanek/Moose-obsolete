Trait {
	#name : #FmxNGTWithSignature,
	#instVars : [
		'signature'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithSignature classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSignature super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSignature classSide >> generatedSlotNames [
	<generated>
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

	<generated>
	signature := anObject

]
