Class {
	#name : #FmxNGTWithTypeAliasesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#typeAliases => FMMany type: #FmxNGTTypeAlias opposite: #aliasedType'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithTypeAliasesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTypeAliasesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithTypeAliasesGenerated >> typeAliases [

	<MSEComment: 'Aliases'>
	^ typeAliases
]

{ #category : #accessing }
FmxNGTWithTypeAliasesGenerated >> typeAliases: anObject [

	typeAliases value: anObject

]
