Class {
	#name : #FmxNGScopingEntity,
	#superclass : #FmxNGContainerEntity,
	#traits : 'FmxNGTGlobalVariableScope + FmxNGTScopingEntity',
	#classTraits : 'FmxNGTGlobalVariableScope classTrait + FmxNGTScopingEntity classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGScopingEntity class >> annotation [

	<generated>
	<MSEClass: #ScopingEntity super: #FmxNGContainerEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGScopingEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGScopingEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariableScope FmxNGTScopingEntity)
]

{ #category : #meta }
FmxNGScopingEntity class >> requirements [

	<generated>
	^ {  }
]
