Class {
	#name : #FmxNGTest1FileAnchor,
	#superclass : #FmxNGTest1AbstractFileAnchor,
	#traits : 'FmxNGTFileNavigation',
	#classTraits : 'FmxNGTFileNavigation classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1FileAnchor class >> annotation [

	<MSEClass: #FileAnchor super: #FmxNGTest1AbstractFileAnchor>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1FileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGTest1FileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1FileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileNavigation)
]

{ #category : #meta }
FmxNGTest1FileAnchor class >> requirements [

	<generated>
	^ {  }
]
