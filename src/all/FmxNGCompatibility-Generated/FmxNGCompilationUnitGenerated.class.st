Class {
	#name : #FmxNGCompilationUnitGenerated,
	#superclass : #FmxNGCFile,
	#instVars : [
		'#compilationUnitOwner => FMOne type: #FmxNGTWithCompilationUnit opposite: #compilationUnit',
		'#module => FMOne type: #FmxNGTModule opposite: #moduleFiles'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGCompilationUnitGenerated class >> annotation [

	<MSEClass: #CompilationUnitGenerated super: #FmxNGCFile>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGCompilationUnitGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGCompilationUnitGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTCompilationUnit. FmxNGTWithModule}
]
