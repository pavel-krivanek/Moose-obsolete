Trait {
	#name : #FmxNGTFileSystemEntity,
	#instVars : [
		'#parentFolder => FMMany type: #FmxNGTFolder opposite: #childrenFileSystemEntities'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTFileSystemEntity classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFileSystemEntity super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFileSystemEntity classSide >> generatedSlotNames [
	<generated>
	^ #(parentFolder)
]

{ #category : #generator }
FmxNGTFileSystemEntity classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFileSystemEntity >> parentFolder [

	<generated>
	^ parentFolder
]

{ #category : #accessing }
FmxNGTFileSystemEntity >> parentFolder: anObject [

	<generated>
	parentFolder value: anObject

]
