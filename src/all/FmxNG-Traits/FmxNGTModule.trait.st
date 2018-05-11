"
FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.

"
Trait {
	#name : #FmxNGTModule,
	#instVars : [
		'#moduleFiles => FMMany type: #FmxNGTWithModule opposite: #module'
	],
	#category : #'FmxNG-Traits-Module'
}

{ #category : #meta }
FmxNGTModule classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TModule super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTModule classSide >> generatedSlotNames [
	<generated>
	^ #(moduleFiles)
]

{ #category : #generator }
FmxNGTModule classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTModule >> moduleFiles [

	<generated>
	^ moduleFiles
]

{ #category : #accessing }
FmxNGTModule >> moduleFiles: anObject [

	<generated>
	moduleFiles value: anObject

]
