Class {
	#name : #FmxNGTest1AbstractFile,
	#superclass : #FmxNGTest1NamedEntity,
	#traits : 'FmxNGTFileSystemEntity',
	#classTraits : 'FmxNGTFileSystemEntity classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1AbstractFile class >> annotation [

	<MSEClass: #AbstractFile super: #FmxNGTest1NamedEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1AbstractFile class >> generatedSlotNames [
	<generated>
	'FmxNGTest1AbstractFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1AbstractFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileSystemEntity)
]

{ #category : #meta }
FmxNGTest1AbstractFile class >> requirements [

	<generated>
	^ {  }
]
