Class {
	#name : #FmxNGModuleGenerated,
	#superclass : #FmxNGScopingEntity,
	#instVars : [
		'#header => FMOne type: #FmxNGTHeader opposite: #headerOwner',
		'#compilationUnit => FMOne type: #FmxNGTCompilationUnit opposite: #compilationUnitOwner',
		'#moduleFiles => FMMany type: #FmxNGTWithModule opposite: #module'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGModuleGenerated class >> annotation [

	<MSEClass: #ModuleGenerated super: #FmxNGScopingEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGModuleGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGModuleGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTModule. FmxNGTWithCompilationUnit. FmxNGTWithHeader}
]

{ #category : #'_fromTrait_FmxNGTWithCompilationUnitGenerated' }
FmxNGModuleGenerated >> compilationUnit [

	^ compilationUnit
]

{ #category : #'_fromTrait_FmxNGTWithCompilationUnitGenerated' }
FmxNGModuleGenerated >> compilationUnit: anObject [

	compilationUnit := anObject

]

{ #category : #'_fromTrait_FmxNGTWithHeaderGenerated' }
FmxNGModuleGenerated >> header [

	^ header
]

{ #category : #'_fromTrait_FmxNGTWithHeaderGenerated' }
FmxNGModuleGenerated >> header: anObject [

	header := anObject

]

{ #category : #'_fromTrait_FmxNGTModuleGenerated' }
FmxNGModuleGenerated >> moduleFiles [

	^ moduleFiles
]

{ #category : #'_fromTrait_FmxNGTModuleGenerated' }
FmxNGModuleGenerated >> moduleFiles: anObject [

	moduleFiles value: anObject

]
