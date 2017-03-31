initialize-release
initialize
	 
	| wizardPane1 wizardPart1 wizardPane2 wizardPart2 |
	
	super initialize.
	
	wizardPane1 := WizardFirstPane named: 'Select the file "jdt2famix.sh"'.
	wizardPart1 := self selectJdt2FamixPart.
	wizardPane1 addPart: wizardPart1 associatedTo: #jdt2famixPath.
	
	wizardPane2 := WizardLastPane named: 'Select the root sources folder of the project you want to import'.
	wizardPart2 := self selectJavaProjectPart .
	wizardPane2 addPart: wizardPart2 associatedTo: #javaFolderPath. 
	
	self addPane: wizardPane1.
	self addPane: wizardPane2.	
	
	wizardPane1 condition: [:tmpWizardInformations |
		(tmpWizardInformations at: #jdt2famixPath) endsWith: 'jdt2famix.sh' 
		] named: 'You have to select the file named jdt2famix.sh'.

	self javaProjectPath asString asFileReference exists
				ifTrue: [ wizardPart2 selectPathName:  self javaProjectPath ]