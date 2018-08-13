Class {
	#name : #FmxNGJavaFolder,
	#superclass : #FmxNGJavaAbstractFile,
	#traits : 'FmxNGTFolder',
	#classTraits : 'FmxNGTFolder classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaFolder class >> annotation [

	<MSEClass: #Folder super: #FmxNGJavaAbstractFile>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaFolder class >> generatedSlotNames [
	<generated>
	'FmxNGJavaFolder class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaFolder class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFolder)
]

{ #category : #meta }
FmxNGJavaFolder class >> requirements [

	<generated>
	^ {  }
]
