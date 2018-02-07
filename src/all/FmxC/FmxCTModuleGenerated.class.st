Class {
	#name : #FmxCTModuleGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#cFile => FMOne type: #FmxCTCFile opposite: #module',
		'#hFile => FMOne type: #FmxCTHFile opposite: #module'
	],
	#category : #'FmxC-Traits'
}

{ #category : #meta }
FmxCTModuleGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TModule super: #FmxTraitEntity>
	<package: #FmxC>
	^self
]

{ #category : #accessing }
FmxCTModuleGenerated >> cFile [

	^ cFile
]

{ #category : #accessing }
FmxCTModuleGenerated >> cFile: anObject [

	cFile := anObject

]

{ #category : #accessing }
FmxCTModuleGenerated >> hFile [

	^ hFile
]

{ #category : #accessing }
FmxCTModuleGenerated >> hFile: anObject [

	hFile := anObject

]
