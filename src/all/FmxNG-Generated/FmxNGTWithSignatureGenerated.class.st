Class {
	#name : #FmxNGTWithSignatureGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'signature'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithSignatureGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSignature super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithSignatureGenerated >> signature [

	<MSEProperty: #signature type: #String>
	<MSEComment: 'Signature of the message being sent'>
	^ signature
]

{ #category : #accessing }
FmxNGTWithSignatureGenerated >> signature: anObject [

	signature := anObject

]
