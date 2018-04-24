"
I represent a compilation unit file. Typically a .c or .cpp file
"
Trait {
	#name : #FmxNGTCompilationUnit,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTCompilationUnit classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TCompilationUnit super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTCompilationUnit classSide >> generatedSlotNames [
	<generated>
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
	^ compilationUnitOwner
]

{ #category : #accessing }
FmxNGTCompilationUnit >> compilationUnitOwner: anObject [

	<generated>
	compilationUnitOwner := anObject

]
