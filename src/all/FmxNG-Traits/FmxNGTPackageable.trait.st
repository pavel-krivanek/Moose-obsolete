Trait {
	#name : #FmxNGTPackageable,
	#instVars : [
		'#parentPackage => FMOne type: #FmxNGTPackage opposite: #childEntities'
	],
	#category : #'FmxNG-Traits-Package'
}

{ #category : #meta }
FmxNGTPackageable classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPackageable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTPackageable classSide >> generatedSlotNames [
	<generated>
	^ #(parentPackage)
]

{ #category : #generator }
FmxNGTPackageable classSide >> generatedTraitNames [
	<generated>
	^ #()
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
