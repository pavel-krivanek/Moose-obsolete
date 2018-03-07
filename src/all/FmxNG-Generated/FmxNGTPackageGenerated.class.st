"
FAMIXPackage represents a package in the source language, meaning that it provides a means to group entities without any baring on lexical scoping. 

Java extractors map Java packages to FAMIXNamespaces. They can also mirror the same information in terms of FAMIXPackage instances.
"
Class {
	#name : #FmxNGTPackageGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#childEntities => FMMany type: #FmxNGTPackageable opposite: #parentPackage',
		'#packageOwner => FMOne type: #FmxNGTWithPackages opposite: #packages'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTPackageGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TPackageGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTPackageGenerated >> childEntities [

	^ childEntities
]

{ #category : #accessing }
FmxNGTPackageGenerated >> childEntities: anObject [

	childEntities value: anObject

]

{ #category : #accessing }
FmxNGTPackageGenerated >> packageOwner [

	^ packageOwner
]

{ #category : #accessing }
FmxNGTPackageGenerated >> packageOwner: anObject [

	packageOwner := anObject

]
