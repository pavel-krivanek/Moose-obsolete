Class {
	#name : #FmxNGTWithTypeAliases,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#typeAliases => FMMany type: #FmxNGTTypeAlias opposite: #aliasedType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTypeAliases class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTypeAliases super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithTypeAliases >> typeAliases [

	<generated>
	<MSEComment: 'Aliases'>
	^ typeAliases
]

{ #category : #accessing }
FmxNGTWithTypeAliases >> typeAliases: anObject [

	<generated>
	typeAliases value: anObject

]
