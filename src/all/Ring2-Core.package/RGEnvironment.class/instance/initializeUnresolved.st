initialization
initializeUnresolved

	super initializeUnresolved.

	behaviors := self unresolvedValue: self defaultBehaviors.
	packages := self unresolvedValue: self defaultPackages.
	globalVariables := self unresolvedValue: self defaultGlobalVariables.
	
	version := self defaultVersion
