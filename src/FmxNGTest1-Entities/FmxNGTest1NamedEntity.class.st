Class {
	#name : #FmxNGTest1NamedEntity,
	#superclass : #FmxNGTest1SourcedEntity,
	#traits : 'FmxNGTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1NamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxNGTest1SourcedEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1NamedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGTest1NamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1NamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTNamed TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGTest1NamedEntity class >> requirements [

	<generated>
	^ {  }
]
