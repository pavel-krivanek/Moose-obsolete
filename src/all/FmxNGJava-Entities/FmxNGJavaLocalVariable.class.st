Class {
	#name : #FmxNGJavaLocalVariable,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTLocalVariable',
	#classTraits : 'FmxNGTLocalVariable classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaLocalVariable class >> annotation [

	<generated>
	<MSEClass: #LocalVariable super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaLocalVariable class >> generatedSlotNames [
	<generated>
	'FmxNGJavaLocalVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaLocalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTLocalVariable)
]

{ #category : #meta }
FmxNGJavaLocalVariable class >> requirements [

	<generated>
	^ { FmxNGJavaMethod }
]
