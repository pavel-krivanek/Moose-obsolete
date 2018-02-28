"Morphic-Widgets-FastTable"
"BaselineOfMoose"

"clone git source repositories"

target := 'pharo-local/iceberg/pharo-project/pharo-zeroconf' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:pharo-project/pharo-zeroconf.git');
	location: target;
	subdirectory:'mc';
	createRepository.
	
target := 'pharo-local/iceberg/peteruhnak/geometry' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:peteruhnak/geometry.git');
	location: target;
	subdirectory:'mc';
	createRepository.	
	

target := 'pharo-local/iceberg/dionisiydk/StateSpecs' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:dionisiydk/StateSpecs.git');
	location: target;
	subdirectory:'repository';
	createRepository.	
repository backend checkoutBranch: 'v2.4.x'.	

target := 'pharo-local/iceberg/dionisiydk/Mocketry' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:dionisiydk/Mocketry.git');
	location: target;
	createRepository.	

target := 'pharo-local/iceberg/dionisiydk/Ghost' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:dionisiydk/Ghost.git');
	location: target;
	createRepository.		

target := 'pharo-local/iceberg/feenkcom/gtoolkit-examples' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:feenkcom/gtoolkit-examples.git');
	location: target;
	createRepository.	

target := 'pharo-local/iceberg/kursjan/petitparser2' asFileReference ensureCreateDirectory.
repository := IceRepositoryCreator new 
	remote: (IceRemote url: 'git@github.com:kursjan/petitparser2.git');
	location: target;
	createRepository.



packageNames := STON fromStream: 'packages.ston' asFileReference readStream.

originalRepositories := STON fromStream: 'originalRepositories.ston' asFileReference readStream.

exportDir := './Moose/src' asFileReference.
originalRepositories associations do: [ :each | (exportDir / each key) asFileReference ensureCreateDirectory].

result := packageNames collect: [ :pn | 
	wc := (MCPackage named: pn) workingCopy.
	originalInfo := wc versionInfo.
	originalRepo := wc repositoryGroup repositories last.
	pn -> originalRepo
].

groups := result groupedBy: [ :each | each value  ].

git := Set new.

(groups associations) do: [ :assoc |
	repo := assoc key.
	assoc value do: [ :packageData |
		packageName := packageData key.
		(repo isKindOf: IceMetacelloRepositoryAdapter) ifFalse: [ 
		version := repo versionWithInfo: (MCPackage named: packageName) workingCopy ancestry ancestors first.
			dirName := 'all'.
			TonelWriter fileOut: version on: (exportDir / dirName) asFileReference ensureCreateDirectory.
			]
		 ifTrue: [			 
			v := (MCPackage named: packageName) workingCopy ancestry ancestors first.
			version := (v commit versionFor: v package).
			dirName := 'all'.
			TonelWriter fileOut: version on: (exportDir / dirName) asFileReference ensureCreateDirectory.
			 ]
	 ]
].

versions := Dictionary newFrom: (packageNames collect: [ :packageName | 
	packageName -> ((MCPackage named: packageName) workingCopy ancestry ancestors first name)]).

STON put: versions onStreamPretty: 'versions.ston' asFileReference ensureDelete writeStream.

