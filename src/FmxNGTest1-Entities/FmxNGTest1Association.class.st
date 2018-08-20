Class {
	#name : #FmxNGTest1Association,
	#superclass : #FmxNGTest1SourcedEntity,
	#traits : 'FmxNGTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FmxNGTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1Association class >> annotation [

	<MSEClass: #Association super: #FmxNGTest1SourcedEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1Association class >> generatedSlotNames [
	<generated>
	'FmxNGTest1Association class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1Association class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FmxNGTest1Association class >> requirements [

	<generated>
	^ {  }
]
