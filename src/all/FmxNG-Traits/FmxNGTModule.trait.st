"
FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.

"
Trait {
	#name : #FmxNGTModule,
	#instVars : [
		'#moduleEntities => FMMany type: #FmxNGTDefinedInModule opposite: #parentModule'
	],
	#category : #'FmxNG-Traits-Module'
}

{ #category : #meta }
FmxNGTModule classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TModule super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTModule classSide >> generatedSlotNames [
	<generated>
	'FmxNGTModule class>>#generatedSlotNames'.
	^ #(moduleEntities)
]

{ #category : #generator }
FmxNGTModule classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTModule >> moduleEntities [

	<generated>
	^ moduleEntities
]

{ #category : #accessing }
FmxNGTModule >> moduleEntities: anObject [

	<generated>
	moduleEntities value: anObject

]
