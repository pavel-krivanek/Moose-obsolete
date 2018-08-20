Class {
	#name : #FmxNGTest1Folder,
	#superclass : #FmxNGTest1AbstractFile,
	#traits : 'FmxNGTFolder',
	#classTraits : 'FmxNGTFolder classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1Folder class >> annotation [

	<MSEClass: #Folder super: #FmxNGTest1AbstractFile>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1Folder class >> generatedSlotNames [
	<generated>
	'FmxNGTest1Folder class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1Folder class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFolder)
]

{ #category : #meta }
FmxNGTest1Folder class >> requirements [

	<generated>
	^ {  }
]
