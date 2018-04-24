Class {
	#name : #FmxNGNamedEntity,
	#superclass : #FmxNGSourcedEntity,
	#traits : 'FmxNGTInvocationsReceiver + FmxNGTNamed + FmxNGTPackageable + FmxNGTWithAnnotationInstances + FmxNGTWithModifiers',
	#classTraits : 'FmxNGTInvocationsReceiver classTrait + FmxNGTNamed classTrait + FmxNGTPackageable classTrait + FmxNGTWithAnnotationInstances classTrait + FmxNGTWithModifiers classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGNamedEntity class >> annotation [

	<generated>
	<MSEClass: #NamedEntity super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGNamedEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocationsReceiver FmxNGTNamed FmxNGTPackageable FmxNGTWithAnnotationInstances FmxNGTWithModifiers)
]

{ #category : #meta }
FmxNGNamedEntity class >> requirements [

	<generated>
	^ {  }
]
