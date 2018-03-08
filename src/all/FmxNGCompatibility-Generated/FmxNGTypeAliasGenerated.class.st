Class {
	#name : #FmxNGTypeAliasGenerated,
	#superclass : #FmxNGType,
	#instVars : [
		'#aliasedType => FMOne type: #FmxNGTWithTypeAliases opposite: #typeAliases'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGTypeAliasGenerated class >> annotation [

	<MSEClass: #TypeAliasGenerated super: #FmxNGType>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGTypeAliasGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGTypeAliasGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTTypeAlias}
]

{ #category : #'_fromTrait_FmxNGTTypeAliasGenerated' }
FmxNGTypeAliasGenerated >> aliasedType [

	<MSEComment: 'Points to the actual type.'>
	^ aliasedType
]

{ #category : #'_fromTrait_FmxNGTTypeAliasGenerated' }
FmxNGTypeAliasGenerated >> aliasedType: anObject [

	aliasedType := anObject

]
