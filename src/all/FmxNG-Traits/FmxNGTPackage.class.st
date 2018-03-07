Class {
	#name : #FmxNGTPackage,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#childEntities => FMMany type: #FmxNGTPackageable opposite: #parentPackage',
		'#packageOwner => FMOne type: #FmxNGTWithPackages opposite: #packages'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTPackage class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TPackage super: #FmxNGTPackageGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
