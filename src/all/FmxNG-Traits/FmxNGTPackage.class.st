"
FAMIXPackage represents a package in the source language, meaning that it provides a means to group entities without any baring on lexical scoping. 

Java extractors map Java packages to FAMIXNamespaces. They can also mirror the same information in terms of FAMIXPackage instances.
"
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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPackage super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTPackage >> childEntities [

	<generated>
	^ childEntities
]

{ #category : #accessing }
FmxNGTPackage >> childEntities: anObject [

	<generated>
	childEntities value: anObject

]

{ #category : #accessing }
FmxNGTPackage >> packageOwner [

	<generated>
	^ packageOwner
]

{ #category : #accessing }
FmxNGTPackage >> packageOwner: anObject [

	<generated>
	packageOwner := anObject

]
