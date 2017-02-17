wizard panes transition
performTerminateButtonAction

	| sourceVersion targetVersion versionSelector blessing commitMessage project version dirtyPackages category projectMessage |
	
	super performTerminateButtonAction.
	commitMessage := wizardInformations at: #message.
		
	"save packages"
	packages do: [:wCopy |
		self goferCommitPackage: wCopy with: commitMessage ].
