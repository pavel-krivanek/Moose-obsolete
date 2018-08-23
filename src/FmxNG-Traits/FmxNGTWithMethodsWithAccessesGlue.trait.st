Trait {
	#name : #FmxNGTWithMethodsWithAccessesGlue,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithMethodsWithAccessesGlue classSide >> annotation [

	<MSEClass: #TWithMethodsWithAccessesGlue super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithMethodsWithAccessesGlue classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithMethodsWithAccessesGlue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTWithMethodsWithAccessesGlue classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #metrics }
FmxNGTWithMethodsWithAccessesGlue >> tightClassCohesion [
	<MSEProperty: #tightClassCohesion type: #Number>
	<derived>
	<MSEComment: 'Tight class cohesion of a class'>
	self flag: #TODO.
	^ self
		lookUpPropertyNamed: #tightClassCohesion
		computedAs: [ 
			| tcc accessDictionary nom |
			tcc := 0.
			accessDictionary := Dictionary new.
			self
				methodsDo: [ :eachMethod | 
					eachMethod accesses
						do: [ :eachAccess | 
							| var |
							var := eachAccess variable.
							var isAttribute
								ifTrue: [ 
									| varName accessedFrom |
									varName := var name.
									accessedFrom := accessDictionary at: varName ifAbsent: [  ].
									accessedFrom isNil
										ifTrue: [ 
											accessedFrom := Set new.
											accessDictionary at: varName put: accessedFrom ].
									accessedFrom add: eachMethod name ] ] ].
			accessDictionary values
				do: [ :each | 
					| size |
					size := each size.
					tcc := tcc + (size * (size - 1) / 2) ].
			nom := self numberOfMethods.
			tcc := (nom = 0 or: [ nom = 1 ])
				ifFalse: [ tcc / (nom * (nom - 1) / 2) ]
				ifTrue: [ 0 ].
			tcc asFloat ]
]

{ #category : #metrics }
FmxNGTWithMethodsWithAccessesGlue >> tightClassCohesion: aNumber [

	self privateState propertyAt: #tightClassCohesion put: aNumber
]
