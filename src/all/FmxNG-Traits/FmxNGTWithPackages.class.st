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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithPackages super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithPackages >> packages [

	<generated>
	^ packages
]

{ #category : #accessing }
FmxNGTWithPackages >> packages: anObject [

	<generated>
	packages value: anObject

]
