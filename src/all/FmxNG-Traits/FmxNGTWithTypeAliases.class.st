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

	<ignoreInTraitUsers>
	<MSEClass: #TWithTypeAliases super: #FmxNGTWithTypeAliasesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
