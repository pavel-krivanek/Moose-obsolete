Class {
	#name : #FmxNGJavaNamedEntity,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTInvocationsReceiver + FmxNGTNamed + FmxNGTPackageable + FmxNGTPossibleStub + FmxNGTWithAnnotationInstances + FmxNGTWithModifiers',
	#classTraits : 'FmxNGTInvocationsReceiver classTrait + FmxNGTNamed classTrait + FmxNGTPackageable classTrait + FmxNGTPossibleStub classTrait + FmxNGTWithAnnotationInstances classTrait + FmxNGTWithModifiers classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaNamedEntity class >> annotation [

	<generated>
	<MSEClass: #NamedEntity super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaNamedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaNamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocationsReceiver FmxNGTNamed FmxNGTPackageable FmxNGTPossibleStub FmxNGTWithAnnotationInstances FmxNGTWithModifiers)
]

{ #category : #meta }
FmxNGJavaNamedEntity class >> requirements [

	<generated>
	^ { FmxNGJavaNamedEntity }
]
