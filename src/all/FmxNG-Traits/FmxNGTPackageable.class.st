Class {
	#name : #FmxNGTPackageable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentPackage => FMOne type: #FmxNGTPackage opposite: #childEntities'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTPackageable class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TPackageable super: #FmxNGTPackageableGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
