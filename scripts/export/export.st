"Morphic-Widgets-FastTable"
"BaselineOfMoose"

packageNames := STON fromStream: 'packages.ston' asFileReference readStream.

originalRepositories := STON fromStream: 'originalRepositories.ston' asFileReference readStream.

exportDir := './Moose/src' asFileReference.
originalRepositories associations do: [ :each | (exportDir / each key) asFileReference ensureCreateDirectory].

"repository := MCFileTreeRepository new
	directory: exportDir asFileReference;
	yourself."
	
result := packageNames collect: [ :pn | 
	wc := (MCPackage named: pn) workingCopy.
	originalInfo := wc versionInfo.
	originalRepo := wc repositoryGroup repositories last.
	pn -> originalRepo
].

groups := result groupedBy: [ :each | each value  ].

(groups associations) do: [ :assoc |
	repo := assoc key.
	assoc value do: [ :packageData |
		packageName := packageData key.
		version := repo versionWithInfo: (MCPackage named: packageName) workingCopy ancestry ancestors first.
		dirName := (originalRepositories associations detect: [ :each | 
			each value = repo description ]) key.
		IceMetadatalessFileTreeWriter
			fileOut: (version)
			on: (MCFileTreeRepository new directory: (exportDir / dirName) asFileReference ensureCreateDirectory).
	 ]
].

versions := Dictionary newFrom: (packageNames collect: [ :packageName | 
	packageName -> ((MCPackage named: packageName) workingCopy ancestry ancestors first name)]).

STON put: versions onStreamPretty: 'versions.ston' asFileReference ensureDelete writeStream.
