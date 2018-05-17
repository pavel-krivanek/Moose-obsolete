Class {
	#name : #FmxNGModule,
	#superclass : #FmxNGScopingEntity,
	#traits : 'FmxNGTModule + FmxNGTWithCompilationUnit + FmxNGTWithHeader',
	#classTraits : 'FmxNGTModule classTrait + FmxNGTWithCompilationUnit classTrait + FmxNGTWithHeader classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGModule class >> annotation [

	<generated>
	<MSEClass: #Module super: #FmxNGScopingEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGModule class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGModule class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTModule FmxNGTWithCompilationUnit FmxNGTWithHeader)
]

{ #category : #meta }
FmxNGModule class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGModule >> classes [ 
	^ #()
]
