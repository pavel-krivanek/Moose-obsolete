Trait {
	#name : #FmxNGTWithClasses,
	#category : #'FmxNG-Traits-Class'
}

{ #category : #meta }
FmxNGTWithClasses classSide >> annotation [

	<MSEClass: #TWithClasses super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithClasses classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithClasses class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTWithClasses classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithClasses >> classes [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."
	<navigation: 'Classes'>

	^ self privateState 
				cacheAt: #classes 
				ifAbsentPut: [self types select: [:type| type isClass ]]
]
