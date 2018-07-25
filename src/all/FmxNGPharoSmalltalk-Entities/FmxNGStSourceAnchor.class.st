Class {
	#name : #FmxNGStSourceAnchor,
	#superclass : #FmxNGStEntity,
	#traits : 'FmxNGTSourceAnchor + FmxNGTWithImmediateSource + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTSourceAnchor classTrait + FmxNGTWithImmediateSource classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#instVars : [
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor',
		'#pharoEntity'
	],
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStSourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FmxNGStEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStSourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGStSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor FmxNGTWithImmediateSource)
]

{ #category : #accessing }
FmxNGStSourceAnchor class >> parentTypes [
	"Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #meta }
FmxNGStSourceAnchor class >> requirements [

	<generated>
	^ { FmxNGStSourcedEntity }
]

{ #category : #initialization }
FmxNGStSourceAnchor >> initialize [
	super initialize.
	pharoEntity := WeakArray new: 1.
]

{ #category : #accessing }
FmxNGStSourceAnchor >> pharoEntity [
	"pharoEntity var is a 1-element weak array"
	
	^ pharoEntity at: 1
]

{ #category : #accessing }
FmxNGStSourceAnchor >> pharoEntity: anObject [
	"point to object weakly"
	
	pharoEntity at: 1 put: anObject 
]

{ #category : #accessing }
FmxNGStSourceAnchor >> sourceText [
	^ self pharoEntity ifNotNil: #definition  
]
