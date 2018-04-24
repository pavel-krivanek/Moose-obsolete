Trait {
	#name : #FmxNGTWithCompilationUnit,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithCompilationUnit classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithCompilationUnit super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithCompilationUnit classSide >> generatedSlotNames [
	<generated>
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
