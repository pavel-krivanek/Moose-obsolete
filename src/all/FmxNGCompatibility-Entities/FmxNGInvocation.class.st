Class {
	#name : #FmxNGInvocation,
	#superclass : #FmxNGAssociation,
	#traits : 'FmxNGTInvocation + FmxNGTWithSignature',
	#classTraits : 'FmxNGTInvocation classTrait + FmxNGTWithSignature classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGInvocation class >> annotation [

	<generated>
	<MSEClass: #Invocation super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGInvocation class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGInvocation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocation FmxNGTWithSignature)
]

{ #category : #meta }
FmxNGInvocation class >> requirements [

	<generated>
	^ {  }
]
