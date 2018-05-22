Class {
	#name : #FmxNGCompilationUnit,
	#superclass : #FmxNGCFile,
	#traits : 'FmxNGTCompilationUnit + FmxNGTDefinedInModule',
	#classTraits : 'FmxNGTCompilationUnit classTrait + FmxNGTDefinedInModule classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGCompilationUnit class >> annotation [

	<generated>
	<MSEClass: #CompilationUnit super: #FmxNGCFile>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGCompilationUnit class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGCompilationUnit class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTCompilationUnit FmxNGTDefinedInModule)
]

{ #category : #meta }
FmxNGCompilationUnit class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGCompilationUnit >> isCompilationUnit [
	^ true
]

{ #category : #accessing }
FmxNGCompilationUnit >> module [

	^ self parentModule
]

{ #category : #accessing }
FmxNGCompilationUnit >> module: anObject [

	^ self module: anObject

]
