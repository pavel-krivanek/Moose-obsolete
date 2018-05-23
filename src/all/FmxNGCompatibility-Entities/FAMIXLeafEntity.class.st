Class {
	#name : #FAMIXLeafEntity,
	#superclass : #FAMIXNamedEntity,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXLeafEntity class >> annotation [

	<generated>
	<MSEClass: #LeafEntity super: #FAMIXNamedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXLeafEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXLeafEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXLeafEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #visiting }
FAMIXLeafEntity >> accept: aVisitor [

	aVisitor visitLeafEntity: self
]
