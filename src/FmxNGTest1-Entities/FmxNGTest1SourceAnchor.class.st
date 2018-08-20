Class {
	#name : #FmxNGTest1SourceAnchor,
	#superclass : #FmxNGTest1Entity,
	#traits : 'FmxNGTSourceAnchor + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTSourceAnchor classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1SourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FmxNGTest1Entity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1SourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGTest1SourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1SourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGTest1SourceAnchor class >> requirements [

	<generated>
	^ { FmxNGTest1SourcedEntity }
]

{ #category : #accessing }
FmxNGTest1SourceAnchor >> belongsTo [

	<generated>
	^ self element

]

{ #category : #accessing }
FmxNGTest1SourceAnchor >> belongsTo: anObject [

	<generated>
	self element: anObject

]
