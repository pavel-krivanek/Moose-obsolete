Class {
	#name : #FmxNGCompilationUnit,
	#superclass : #FmxNGCFile,
	#traits : 'FmxNGTCompilationUnit + FmxNGTWithModule',
	#classTraits : 'FmxNGTCompilationUnit classTrait + FmxNGTWithModule classTrait',
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
	^ #(FmxNGTCompilationUnit FmxNGTWithModule)
]

{ #category : #meta }
FmxNGCompilationUnit class >> requirements [

	<generated>
	^ {  }
]
