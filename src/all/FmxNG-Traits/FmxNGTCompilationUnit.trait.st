"
I represent a compilation unit file. Typically a .c or .cpp file
"
Trait {
	#name : #FmxNGTCompilationUnit,
	#instVars : [
		'#compilationUnitOwner => FMOne type: #FmxNGTWithCompilationUnit opposite: #compilationUnit'
	],
	#category : #'FmxNG-Traits-CompilationUnit'
}

{ #category : #meta }
FmxNGTCompilationUnit classSide >> annotation [

	<MSEClass: #TCompilationUnit super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTCompilationUnit classSide >> generatedSlotNames [
	<generated>
	'FmxNGTCompilationUnit class>>#generatedSlotNames'.
	^ #(compilationUnitOwner)
]

{ #category : #generator }
FmxNGTCompilationUnit classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTCompilationUnit >> compilationUnitOwner [

	<generated>
	<MSEComment: 'The compilation unit that defines this module'>
	^ compilationUnitOwner
]

{ #category : #accessing }
FmxNGTCompilationUnit >> compilationUnitOwner: anObject [

	<generated>
	compilationUnitOwner := anObject

]
