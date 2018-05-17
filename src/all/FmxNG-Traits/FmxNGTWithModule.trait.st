Trait {
	#name : #FmxNGTWithModule,
	#instVars : [
		'#module => FMOne type: #FmxNGTModule opposite: #moduleFiles'
	],
	#category : #'FmxNG-Traits-Module'
}

{ #category : #meta }
FmxNGTWithModule classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithModule super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithModule classSide >> generatedSlotNames [
	<generated>
	^ #(module)
]

{ #category : #generator }
FmxNGTWithModule classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithModule >> module [

	<generated>
	<MSEComment: 'Module that contains the definition of this compilation unit'>
	^ module
]

{ #category : #accessing }
FmxNGTWithModule >> module: anObject [

	<generated>
	module := anObject

]
