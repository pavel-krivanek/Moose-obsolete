Class {
	#name : #FmxNGStAssociation,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FmxNGTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAssociation class >> annotation [

	<generated>
	<MSEClass: #Association super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAssociation class >> generatedSlotNames [
	<generated>
	'FmxNGStAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAssociation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation)
]

{ #category : #meta }
FmxNGStAssociation class >> requirements [

	<generated>
	^ {  }
]
