*Moose-Development-Tools
mooseCreateFixedVersion: targetVersionString for: configurationBasename from: sourceVersionString description: aString
	
	<apiDocumentation>
	| toolbox sourceVersion |
	toolbox := self configurationNamed: configurationBasename.
	sourceVersion := toolbox project version: sourceVersionString.
	(targetVersionString indexOfSubCollection: 'baseline') > 0 
		ifTrue: [ self error: '' ].

	"create development version version from development version"
	self
		mooseCreateFixedDevelopment: targetVersionString
		for: configurationBasename
		importFromBaseline: sourceVersion versionString
		description: aString.
