"
This entity models a typedef in C.

Instance Variables:
	aliasedType	<ProtoObject | PseudoContext>
"
Class {
	#name : #FmxNGTTypeAliasGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#aliasedType => FMOne type: #FmxNGTWithTypeAliases opposite: #typeAliases'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTypeAliasGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypeAlias super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTypeAliasGenerated >> aliasedType [

	<MSEComment: 'Points to the actual type.'>
	^ aliasedType
]

{ #category : #accessing }
FmxNGTTypeAliasGenerated >> aliasedType: anObject [

	aliasedType := anObject

]
