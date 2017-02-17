actions
doImport

	| mseFile javaProjectPath model|
	javaProjectPath := wizardInformations at: #javaFolderPath.	",'/'"
	self
		generateMseFile: '' 
		forProject: javaProjectPath  
		usingJdt2FamixPath: self jdt2famixPath.

	mseFile := javaProjectPath asFileReference / (javaProjectPath asFileReference basename , '.mse').
	
	model := (MooseModel new 
		importFromMSEStream: (StandardFileStream readOnlyFileNamed: mseFile fullName);
		name: javaProjectPath asFileReference basename).
	model rootFolder: javaProjectPath.
	model install.

	JavaProjectPath := javaProjectPath