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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPackageable super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTPackageable >> parentPackage [

	<generated>
	<MSEComment: 'Package containing the entity in the code structure (if applicable)'>
	<container>

	^ parentPackage
]

{ #category : #accessing }
FmxNGTPackageable >> parentPackage: anObject [

	<generated>
	parentPackage := anObject

]
