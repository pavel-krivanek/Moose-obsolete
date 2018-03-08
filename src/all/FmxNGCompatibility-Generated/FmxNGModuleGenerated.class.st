Class {
	#name : #FmxNGModuleGenerated,
	#superclass : #FmxNGScopingEntity,
	#instVars : [
		'#compilationUnit => FMOne type: #FmxNGTCompilationUnit opposite: #compilationUnitOwner',
		'#header => FMOne type: #FmxNGTHeader opposite: #headerOwner',
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
