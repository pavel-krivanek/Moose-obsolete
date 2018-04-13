Class {
	#name : #FmxNGTWithSignature,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'signature'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithSignature class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSignature super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
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
