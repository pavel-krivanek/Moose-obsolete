Class {
	#name : #FAMIXFolder,
	#superclass : #FAMIXAbstractFile,
	#traits : 'FmxNGTFolder',
	#classTraits : 'FmxNGTFolder classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXFolder class >> annotation [

	<generated>
	<MSEClass: #Folder super: #FAMIXAbstractFile>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXFolder class >> generatedSlotNames [
	<generated>
	'FAMIXFolder class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXFolder class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFolder)
]

{ #category : #meta }
FAMIXFolder class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FAMIXFolder >> isFolder [
	^ true
]
