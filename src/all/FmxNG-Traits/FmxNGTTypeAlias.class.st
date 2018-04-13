"
This entity models a typedef in C.

Instance Variables:
	aliasedType	<ProtoObject | PseudoContext>
"
Class {
	#name : #FmxNGTTypeAlias,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#aliasedType => FMOne type: #FmxNGTWithTypeAliases opposite: #typeAliases'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTypeAlias class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypeAlias super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
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
