Class {
	#name : #FmxNGCompilationUnitGenerated,
	#superclass : #FmxNGCFile,
	#instVars : [
		'#module => FMOne type: #FmxNGTModule opposite: #moduleFiles',
		'#compilationUnitOwner => FMOne type: #FmxNGTWithCompilationUnit opposite: #compilationUnit'
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

{ #category : #'_fromTrait_FmxNGTCompilationUnitGenerated' }
FmxNGCompilationUnitGenerated >> compilationUnitOwner [

	^ compilationUnitOwner
]

{ #category : #'_fromTrait_FmxNGTCompilationUnitGenerated' }
FmxNGCompilationUnitGenerated >> compilationUnitOwner: anObject [

	compilationUnitOwner := anObject

]

{ #category : #'_fromTrait_FmxNGTWithModuleGenerated' }
FmxNGCompilationUnitGenerated >> module [

	^ module
]

{ #category : #'_fromTrait_FmxNGTWithModuleGenerated' }
FmxNGCompilationUnitGenerated >> module: anObject [

	module := anObject

]
