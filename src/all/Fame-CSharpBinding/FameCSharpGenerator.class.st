"
FameCSharpGenerator new generateFor: MooseModel meta in: 'C:\Users\george\moose'.


{ 'C:\Users\george\moose\FILE' . 'C:\Users\george\moose\FAMIX' } 
do: [ :folder | 
	folder asFileReference entries do: [ :each | 
				('C:\Users\george\Source\Repos\roslyn2famix\RoslynMonoFamix\Model\' asFileReference / (each asFileReference path basename)) delete.
				each asFileReference copyTo: 					'C:\Users\george\Source\Repos\roslyn2famix\RoslynMonoFamix\Model\' asFileReference / (each asFileReference path basename)]. ].

"
Class {
	#name : #FameCSharpGenerator,
	#superclass : #Object,
	#instVars : [
		'folderPath'
	],
	#category : #'Fame-CSharpBinding'
}

{ #category : #setter }
FameCSharpGenerator >> folderPath: aString [ 
	folderPath := aString asFileReference.
	folderPath ensureCreateDirectory.
	folderPath ensureDeleteAll.
	folderPath ensureCreateDirectory.
]

{ #category : #'as yet unclassified' }
FameCSharpGenerator >> generateFor: repository in: folderPath [
	self folderPath: folderPath.
	repository packages do: [ :aPackage | 
		self generateForPackage: aPackage ]
]

{ #category : #'as yet unclassified' }
FameCSharpGenerator >> generateForClass: aFameClass [ 
	| file |
	file := folderPath / (aFameClass name capitalized, '.cs').
	file ensureCreateFile.
	file writeStreamDo: [ : aStream | 
			CSharpClassPrinter new print: aFameClass in: aStream
			].
]

{ #category : #'as yet unclassified' }
FameCSharpGenerator >> generateForPackage: aFM3PackageDescription [ 
	|save|
	save := folderPath.
	folderPath := folderPath / aFM3PackageDescription name.
	folderPath ensureCreateDirectory.
	aFM3PackageDescription classes do: [ :aClass | 
		self generateForClass: aClass
		 ].
	folderPath := save.
]
