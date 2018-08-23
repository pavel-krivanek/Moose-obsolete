Class {
	#name : #FmxNGTest2Association,
	#superclass : #FmxNGTest2SourcedEntity,
	#traits : 'FmxNGTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FmxNGTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2Association class >> annotation [

	<MSEClass: #Association super: #FmxNGTest2SourcedEntity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2Association class >> generatedSlotNames [
	<generated>
	'FmxNGTest2Association class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2Association class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FmxNGTest2Association class >> requirements [

	<generated>
	^ {  }
]
