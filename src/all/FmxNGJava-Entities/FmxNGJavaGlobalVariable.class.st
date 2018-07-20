Class {
	#name : #FmxNGJavaGlobalVariable,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTGlobalVariable',
	#classTraits : 'FmxNGTGlobalVariable classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaGlobalVariable class >> annotation [

	<generated>
	<MSEClass: #GlobalVariable super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaGlobalVariable class >> generatedSlotNames [
	<generated>
	'FmxNGJavaGlobalVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaGlobalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariable)
]

{ #category : #meta }
FmxNGJavaGlobalVariable class >> requirements [

	<generated>
	^ { FmxNGJavaScopingEntity }
]
