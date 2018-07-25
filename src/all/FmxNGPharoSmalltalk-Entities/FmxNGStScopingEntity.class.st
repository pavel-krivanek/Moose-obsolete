Class {
	#name : #FmxNGStScopingEntity,
	#superclass : #FmxNGStContainerEntity,
	#traits : 'FmxNGTGlobalVariableScope + FmxNGTScopingEntity',
	#classTraits : 'FmxNGTGlobalVariableScope classTrait + FmxNGTScopingEntity classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStScopingEntity class >> annotation [

	<MSEClass: #ScopingEntity super: #FmxNGStContainerEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStScopingEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStScopingEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStScopingEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariableScope FmxNGTScopingEntity)
]

{ #category : #meta }
FmxNGStScopingEntity class >> requirements [

	<generated>
	^ { FmxNGStScopingEntity }
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGStScopingEntity >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	
	self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGStScopingEntity >> allClasses [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result addAll: each classes ].
	^ result
]

{ #category : #accessing }
FmxNGStScopingEntity >> belongsTo [
	^ self parentScope ifNil: [ self parentPackage ]
]

{ #category : #accessing }
FmxNGStScopingEntity >> typeScope [
	"This only makes sense to reject self loops in #collectAtScope:"
	^ self classes
]
