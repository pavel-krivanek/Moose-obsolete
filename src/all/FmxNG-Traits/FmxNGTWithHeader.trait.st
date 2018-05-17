Trait {
	#name : #FmxNGTWithHeader,
	#instVars : [
		'#header => FMOne type: #FmxNGTHeader opposite: #headerOwner'
	],
	#category : #'FmxNG-Traits-Header'
}

{ #category : #meta }
FmxNGTWithHeader classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithHeader super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithHeader classSide >> generatedSlotNames [
	<generated>
	^ #(header)
]

{ #category : #generator }
FmxNGTWithHeader classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithHeader >> header [

	<generated>
	<MSEComment: 'The header file that defines this module'>
	^ header
]

{ #category : #accessing }
FmxNGTWithHeader >> header: anObject [

	<generated>
	header := anObject

]
