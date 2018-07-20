Class {
	#name : #FmxNGJavaScopingEntity,
	#superclass : #FmxNGJavaContainerEntity,
	#traits : 'FmxNGTGlobalVariableScope + FmxNGTScopingEntity',
	#classTraits : 'FmxNGTGlobalVariableScope classTrait + FmxNGTScopingEntity classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaScopingEntity class >> annotation [

	<generated>
	<MSEClass: #ScopingEntity super: #FmxNGJavaContainerEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaScopingEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaScopingEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaScopingEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariableScope FmxNGTScopingEntity)
]

{ #category : #meta }
FmxNGJavaScopingEntity class >> requirements [

	<generated>
	^ { FmxNGJavaScopingEntity }
]
