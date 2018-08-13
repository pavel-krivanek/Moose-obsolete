Trait {
	#name : #FmxNGTPackageWithClassesGlue,
	#category : #'FmxNG-Traits-Package'
}

{ #category : #meta }
FmxNGTPackageWithClassesGlue classSide >> annotation [

	<MSEClass: #TPackageWithClassesGlue super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTPackageWithClassesGlue classSide >> generatedSlotNames [
	<generated>
	'FmxNGTPackageWithClassesGlue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTPackageWithClassesGlue classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'Famix-Implementation' }
FmxNGTPackageWithClassesGlue >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<MSEComment: 'The sum of the complexity in a package'>
	<derived>
			
	^self
		lookUpPropertyNamed: #WMC
		computedAs: [self classes inject: 0 into: [ :sum :each | sum + each weightedMethodCount] ]
]
