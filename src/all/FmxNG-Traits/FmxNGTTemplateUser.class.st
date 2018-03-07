Class {
	#name : #FmxNGTTemplateUser,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#template => FMOne type: #FmxNGTTemplate opposite: #templateUsers'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTemplateUser class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTemplateUser super: #FmxNGTTemplateUserGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
