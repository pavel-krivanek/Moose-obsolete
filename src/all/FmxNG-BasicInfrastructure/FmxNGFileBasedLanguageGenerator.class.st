Class {
	#name : #FmxNGFileBasedLanguageGenerator,
	#superclass : #FmxNGBasicInfrastructureGenerator,
	#instVars : [
		'abstractFile',
		'abstractFileAnchor',
		'file',
		'fileAnchor',
		'folder',
		'indexedFileAnchor',
		'multipleFileAnchor',
		'sourceTextAnchor'
	],
	#category : #'FmxNG-BasicInfrastructure'
}

{ #category : #definition }
FmxNGFileBasedLanguageGenerator >> defineClasses [

	super defineClasses.
	
	abstractFile := builder newClassNamed: #AbstractFile.
	abstractFileAnchor := builder newClassNamed: #AbstractFileAnchor.
	file := builder newClassNamed: #File.
	fileAnchor := builder newClassNamed: #FileAnchor.
	folder := builder newClassNamed: #Folder.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	multipleFileAnchor := builder newClassNamed: #MultipleFileAnchor.
	sourceTextAnchor := builder newClassNamed: #SourceTextAnchor.

]

{ #category : #definition }
FmxNGFileBasedLanguageGenerator >> defineHierarchy [

	super defineHierarchy.
	
	abstractFile --|> namedEntity.
	abstractFile --|> #TFileSystemEntity.
	
	abstractFileAnchor --|> sourceAnchor.
	abstractFileAnchor --|> #TFileAnchor.

	file --|> abstractFile.
	file --|> #TFile.

	fileAnchor --|> abstractFileAnchor.
	fileAnchor --|> #TFileNavigation.

	folder --|> abstractFile.
	folder --|> #TFolder.

	indexedFileAnchor --|> abstractFileAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	multipleFileAnchor --|> sourceAnchor.

	sourceTextAnchor --|> sourceAnchor.

	sourcedEntity --|> #TWithFiles.

]
