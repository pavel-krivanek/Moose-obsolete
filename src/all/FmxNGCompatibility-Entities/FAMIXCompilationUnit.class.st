Class {
	#name : #FAMIXCompilationUnit,
	#superclass : #FAMIXCFile,
	#traits : 'FmxNGTCompilationUnit + FmxNGTDefinedInModule',
	#classTraits : 'FmxNGTCompilationUnit classTrait + FmxNGTDefinedInModule classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXCompilationUnit class >> annotation [

	<generated>
	<MSEClass: #CompilationUnit super: #FAMIXCFile>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXCompilationUnit class >> generatedSlotNames [
	<generated>
	'FAMIXCompilationUnit class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXCompilationUnit class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTCompilationUnit FmxNGTDefinedInModule)
]

{ #category : #meta }
FAMIXCompilationUnit class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FAMIXCompilationUnit >> isCompilationUnit [
	^ true
]

{ #category : #accessing }
FAMIXCompilationUnit >> module [

	^ self parentModule
]

{ #category : #accessing }
FAMIXCompilationUnit >> module: anObject [

	^ self module: anObject

]
