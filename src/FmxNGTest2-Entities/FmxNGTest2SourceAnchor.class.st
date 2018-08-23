Class {
	#name : #FmxNGTest2SourceAnchor,
	#superclass : #FmxNGTest2Entity,
	#traits : 'FmxNGTSourceAnchor + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTSourceAnchor classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2SourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FmxNGTest2Entity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2SourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGTest2SourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2SourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGTest2SourceAnchor class >> requirements [

	<generated>
	^ { FmxNGTest2SourcedEntity }
]

{ #category : #accessing }
FmxNGTest2SourceAnchor >> belongsTo [

	<generated>
	^ self element

]

{ #category : #accessing }
FmxNGTest2SourceAnchor >> belongsTo: anObject [

	<generated>
	self element: anObject

]
