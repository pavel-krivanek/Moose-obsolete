Class {
	#name : #FmxNGJavaInvocation,
	#superclass : #FmxNGJavaAssociation,
	#traits : 'FmxNGTInvocation + FmxNGTWithSignature',
	#classTraits : 'FmxNGTInvocation classTrait + FmxNGTWithSignature classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaInvocation class >> annotation [

	<generated>
	<MSEClass: #Invocation super: #FmxNGJavaAssociation>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaInvocation class >> generatedSlotNames [
	<generated>
	'FmxNGJavaInvocation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaInvocation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocation FmxNGTWithSignature)
]

{ #category : #meta }
FmxNGJavaInvocation class >> requirements [

	<generated>
	^ {  }
]
