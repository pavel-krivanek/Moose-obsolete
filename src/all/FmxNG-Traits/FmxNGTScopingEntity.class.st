Class {
	#name : #FmxNGTScopingEntity,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTScopingEntity opposite: #childScopes',
		'#childScopes => FMMany type: #FmxNGTScopingEntity opposite: #parentScope'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTScopingEntity class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TScopingEntity super: #FmxNGTScopingEntityGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
