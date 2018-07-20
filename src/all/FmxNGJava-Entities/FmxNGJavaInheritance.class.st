Class {
	#name : #FmxNGJavaInheritance,
	#superclass : #FmxNGJavaAssociation,
	#traits : 'FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaInheritance class >> annotation [

	<generated>
	<MSEClass: #Inheritance super: #FmxNGJavaAssociation>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaInheritance class >> generatedSlotNames [
	<generated>
	'FmxNGJavaInheritance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaInheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGJavaInheritance class >> requirements [

	<generated>
	^ {  }
]
