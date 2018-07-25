Trait {
	#name : #FmxNGTWithCompilationUnit,
	#instVars : [
		'#compilationUnit => FMOne type: #FmxNGTCompilationUnit opposite: #compilationUnitOwner'
	],
	#category : #'FmxNG-Traits-CompilationUnit'
}

{ #category : #meta }
FmxNGTWithCompilationUnit classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithCompilationUnit super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithCompilationUnit classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithCompilationUnit class>>#generatedSlotNames'.
	^ #(compilationUnit)
]

{ #category : #generator }
FmxNGTWithCompilationUnit classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithCompilationUnit >> compilationUnit [

	<generated>
	^ compilationUnit
]

{ #category : #accessing }
FmxNGTWithCompilationUnit >> compilationUnit: anObject [

	<generated>
	compilationUnit := anObject

]
