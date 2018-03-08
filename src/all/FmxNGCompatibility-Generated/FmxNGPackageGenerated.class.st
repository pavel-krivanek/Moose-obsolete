Class {
	#name : #FmxNGPackageGenerated,
	#superclass : #FmxNGScopingEntity,
	#instVars : [
		'#childEntities => FMMany type: #FmxNGTPackageable opposite: #parentPackage',
		'#packageOwner => FMOne type: #FmxNGTWithPackages opposite: #packages'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGPackageGenerated class >> annotation [

	<MSEClass: #PackageGenerated super: #FmxNGScopingEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGPackageGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGPackageGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTPackage}
]

{ #category : #'_fromTrait_FmxNGTPackageGenerated' }
FmxNGPackageGenerated >> childEntities [

	^ childEntities
]

{ #category : #'_fromTrait_FmxNGTPackageGenerated' }
FmxNGPackageGenerated >> childEntities: anObject [

	childEntities value: anObject

]

{ #category : #'_fromTrait_FmxNGTPackageGenerated' }
FmxNGPackageGenerated >> packageOwner [

	^ packageOwner
]

{ #category : #'_fromTrait_FmxNGTPackageGenerated' }
FmxNGPackageGenerated >> packageOwner: anObject [

	packageOwner := anObject

]
