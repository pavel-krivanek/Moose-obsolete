Class {
	#name : #FAMIXModule,
	#superclass : #FAMIXScopingEntity,
	#traits : 'FmxNGTModule + FmxNGTWithCompilationUnit + FmxNGTWithHeader',
	#classTraits : 'FmxNGTModule classTrait + FmxNGTWithCompilationUnit classTrait + FmxNGTWithHeader classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXModule class >> annotation [

	<generated>
	<MSEClass: #Module super: #FAMIXScopingEntity>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXModule class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXModule class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTModule FmxNGTWithCompilationUnit FmxNGTWithHeader)
]

{ #category : #meta }
FAMIXModule class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXModule >> classes [ 
	^ #()
]
