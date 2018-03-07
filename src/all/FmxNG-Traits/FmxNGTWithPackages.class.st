Class {
	#name : #FmxNGTWithPackages,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#packages => FMMany type: #FmxNGTPackage opposite: #packageOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithPackages class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithPackages super: #FmxNGTWithPackagesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
