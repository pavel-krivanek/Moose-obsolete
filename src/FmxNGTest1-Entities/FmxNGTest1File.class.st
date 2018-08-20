Class {
	#name : #FmxNGTest1File,
	#superclass : #FmxNGTest1AbstractFile,
	#traits : 'FmxNGTFile',
	#classTraits : 'FmxNGTFile classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1File class >> annotation [

	<MSEClass: #File super: #FmxNGTest1AbstractFile>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1File class >> generatedSlotNames [
	<generated>
	'FmxNGTest1File class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1File class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFile)
]

{ #category : #meta }
FmxNGTest1File class >> requirements [

	<generated>
	^ {  }
]
