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
	<MSEClass: #TPackageable super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTPackageableGenerated >> parentPackage [

	^ parentPackage
]

{ #category : #accessing }
FmxNGTPackageableGenerated >> parentPackage: anObject [

	parentPackage := anObject

]
