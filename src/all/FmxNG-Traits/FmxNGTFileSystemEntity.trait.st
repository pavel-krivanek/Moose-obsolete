Trait {
	#name : #FmxNGTFileSystemEntity,
	#instVars : [
		'#parentFolder => FMOne type: #FmxNGTFolder opposite: #childrenFileSystemEntities'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTFileSystemEntity classSide >> annotation [

	<MSEClass: #TFileSystemEntity super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #constants }
FmxNGTFileSystemEntity classSide >> famixFolderSeparatorString [
	^'/'
]

{ #category : #generator }
FmxNGTFileSystemEntity classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFileSystemEntity class>>#generatedSlotNames'.
	^ #(parentFolder)
]

{ #category : #generator }
FmxNGTFileSystemEntity classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #constants }
FmxNGTFileSystemEntity classSide >> named: aName filedIn: aFolder [

	^self basicNew
				initialize;
				name: (aName copyReplaceAll: self systemFolderSeparatorString with: self famixFolderSeparatorString) asSymbol;
				parentFolder: aFolder;
				yourself.
]

{ #category : #constants }
FmxNGTFileSystemEntity classSide >> systemFolderSeparatorString [
	^ DiskStore delimiter asString 
]

{ #category : #accessing }
FmxNGTFileSystemEntity >> parentFolder [

	<generated>
	^ parentFolder
]

{ #category : #accessing }
FmxNGTFileSystemEntity >> parentFolder: anObject [

	parentFolder := anObject.
	self resetMooseName.
	

]
