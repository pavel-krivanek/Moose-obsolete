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

	<ignoreInTraitUsers>
	<MSEClass: #TTypeAlias super: #FmxNGTTypeAliasGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
