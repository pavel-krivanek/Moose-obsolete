wizard panes transition
performTerminateButtonAction

	| sourceVersion targetVersion versionSelector blessing commitMessage project version dirtyPackages category projectMessage |
	
	super performTerminateButtonAction.
	sourceVersion := wizardInformations at: #sourceVersionNumber.
	targetVersion := wizardInformations at: #targetVersionNumber.
	versionSelector:= wizardInformations at: #versionSelector asSymbol. 
	blessing := wizardInformations at: #blessing.
	commitMessage := wizardInformations at: #message.
	projectMessage := versionSelector, ' ', commitMessage.
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
					blessing: blessing.

	"retrieve dirty packages"
	project := self selectedProjectInstance.
	version := project version: targetVersion.
	dirtyPackages := project packagesNeedSaving: version versionString.
	
	dirtyPackages ifEmpty: [ "save config directly if no dirty packages"
		self saveProject: project with: projectMessage.
		^ self ]. 
		
	"save packages"
	dirtyPackages do: [:assoc |
		assoc key goferCommitPackage: commitMessage ].
	"update version number"
	MetacelloVersionConstructor 
		updatePackageMethodIn: self selectedClass new
		sourceVersion: targetVersion.
	
	"save configuration"
	self saveProject: project with: projectMessage