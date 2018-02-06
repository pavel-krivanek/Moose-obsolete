Class {
	#name : #FmxNGTWithPackagesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#packages => FMMany type: #FmxNGTPackage opposite: #packageOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithPackagesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithPackages super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithPackagesGenerated >> packages [

	^ packages
]

{ #category : #accessing }
FmxNGTWithPackagesGenerated >> packages: anObject [

	packages value: anObject

]
