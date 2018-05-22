"
It represents a folder in the file system. It can contain other files or folders.
"
Trait {
	#name : #FmxNGTFolder,
	#instVars : [
		'#childrenFileSystemEntities => FMOne type: #FmxNGTWithFiles opposite: #containerFiles'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTFolder classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFolder super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFolder classSide >> generatedSlotNames [
	<generated>
	^ #(childrenFileSystemEntities)
]

{ #category : #generator }
FmxNGTFolder classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFolder >> childrenFileSystemEntities [

	<generated>
	<MSEComment: 'List of entities contained in this package.'>
	^ childrenFileSystemEntities
]

{ #category : #accessing }
FmxNGTFolder >> childrenFileSystemEntities: anObject [

	<generated>
	childrenFileSystemEntities := anObject

]
