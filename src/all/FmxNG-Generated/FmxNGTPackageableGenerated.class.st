Class {
	#name : #FmxNGTPackageableGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentPackage => FMOne type: #FmxNGTPackage opposite: #childEntities'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTPackageableGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TPackageableGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTPackageableGenerated >> parentPackage [

	<MSEComment: 'Package containing the entity in the code structure (if applicable)'>
	<container>

	^ parentPackage
]

{ #category : #accessing }
FmxNGTPackageableGenerated >> parentPackage: anObject [

	parentPackage := anObject

]
