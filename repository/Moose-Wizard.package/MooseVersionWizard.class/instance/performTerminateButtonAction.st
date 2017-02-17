wizard panes transition
performTerminateButtonAction

	
	| sourceVersion targetVersion versionSelector blessing projectMessage category project |
	super performTerminateButtonAction.
	sourceVersion := wizardInformations at: #sourceVersionNumber.
	targetVersion := wizardInformations at: #targetVersionNumber.
	versionSelector:= wizardInformations at: #versionSelector asSymbol. 
	blessing := wizardInformations at: #blessing.
	projectMessage := versionSelector, ' ', (wizardInformations at: #message).
	category := ((wizardInformations at: #commitType) = #branchDev)
		ifTrue: [ 'branches' ]
		ifFalse: [ 'versions' ].

	"spawn new version"	
	MetacelloVersionConstructor 
					spawnPackageMethodIn: self selectedClass new 
					category: category
					named: versionSelector
					sourceVersion: sourceVersion 
					targetVersion: targetVersion
					blessing: blessing asSymbol.

	"update version number"
	MetacelloVersionConstructor 
		updatePackageMethodIn: self selectedClass new
		sourceVersion: targetVersion.
	
	"save configuration"
	self saveProject: self selectedProjectInstance with: projectMessage