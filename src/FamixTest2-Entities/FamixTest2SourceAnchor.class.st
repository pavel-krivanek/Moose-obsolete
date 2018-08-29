Class {
	#name : #FamixTest2SourceAnchor,
	#superclass : #FamixTest2Entity,
	#traits : 'FamixTSourceAnchor + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceAnchor classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FamixTest2-Entities-Entities'
}

{ #category : #meta }
FamixTest2SourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FamixTest2Entity>
	<package: #'FamixTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixTest2SourceAnchor class >> generatedSlotNames [
	<generated>
	'FamixTest2SourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixTest2SourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTSourceAnchor TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FamixTest2SourceAnchor class >> requirements [

	<generated>
	^ { FamixTest2SourcedEntity }
]

{ #category : #accessing }
FamixTest2SourceAnchor >> belongsTo [

	<generated>
	^ self element

]

{ #category : #accessing }
FamixTest2SourceAnchor >> belongsTo: anObject [

	<generated>
	self element: anObject

]
