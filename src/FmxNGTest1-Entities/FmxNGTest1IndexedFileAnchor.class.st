Class {
	#name : #FmxNGTest1IndexedFileAnchor,
	#superclass : #FmxNGTest1AbstractFileAnchor,
	#traits : 'FmxNGTIndexedFileNavigation',
	#classTraits : 'FmxNGTIndexedFileNavigation classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1IndexedFileAnchor class >> annotation [

	<MSEClass: #IndexedFileAnchor super: #FmxNGTest1AbstractFileAnchor>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1IndexedFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGTest1IndexedFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1IndexedFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTIndexedFileNavigation)
]

{ #category : #meta }
FmxNGTest1IndexedFileAnchor class >> requirements [

	<generated>
	^ {  }
]
