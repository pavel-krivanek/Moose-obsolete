Class {
	#name : #FmxNGTest2NamedEntity,
	#superclass : #FmxNGTest2SourcedEntity,
	#traits : 'FmxNGTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2NamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxNGTest2SourcedEntity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2NamedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGTest2NamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2NamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTNamed TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGTest2NamedEntity class >> requirements [

	<generated>
	^ {  }
]
