Trait {
	#name : #FmxNGTDefinedInModule,
	#instVars : [
		'#parentModule => FMOne type: #FmxNGTModule opposite: #moduleEntities'
	],
	#category : #'FmxNG-Traits-Module'
}

{ #category : #meta }
FmxNGTDefinedInModule classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TDefinedInModule super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTDefinedInModule classSide >> generatedSlotNames [
	<generated>
	'FmxNGTDefinedInModule class>>#generatedSlotNames'.
	^ #(parentModule)
]

{ #category : #generator }
FmxNGTDefinedInModule classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTDefinedInModule >> parentModule [

	<generated>
	<MSEComment: 'Module that contains the definition of this entity'>
	^ parentModule
]

{ #category : #accessing }
FmxNGTDefinedInModule >> parentModule: anObject [

	<generated>
	parentModule := anObject

]
