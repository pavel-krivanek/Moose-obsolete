"
This entity models a typedef in C.

Instance Variables:
	aliasedType	<ProtoObject | PseudoContext>
"
Trait {
	#name : #FmxNGTTypeAlias,
	#instVars : [
		'#aliasedType => FMOne type: #FmxNGTWithTypeAliases opposite: #typeAliases'
	],
	#category : #'FmxNG-Traits-TypeAlias'
}

{ #category : #meta }
FmxNGTTypeAlias classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypeAlias super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTypeAlias classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTypeAlias class>>#generatedSlotNames'.
	^ #(aliasedType)
]

{ #category : #generator }
FmxNGTTypeAlias classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTypeAlias >> aliasedType [

	<generated>
	<MSEComment: 'Points to the actual type.'>
	^ aliasedType
]

{ #category : #accessing }
FmxNGTTypeAlias >> aliasedType: anObject [

	<generated>
	aliasedType := anObject

]
