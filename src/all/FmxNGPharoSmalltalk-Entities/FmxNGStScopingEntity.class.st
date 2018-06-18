Class {
	#name : #FmxNGStScopingEntity,
	#superclass : #FmxNGStContainerEntity,
	#traits : 'FmxNGTGlobalVariableScope + FmxNGTScopingEntity',
	#classTraits : 'FmxNGTGlobalVariableScope classTrait + FmxNGTScopingEntity classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStScopingEntity class >> annotation [

	<generated>
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
	^ {  }
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
