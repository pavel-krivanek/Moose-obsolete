private
packagesForConfigurationVersion: aConfiguration
	"self packagesForConfigurationVersion: (ConfigurationOfRPackage new project version: #stable)"

	| version directive packages |
	version := aConfiguration.
	version ignoreImage: true.
	directive := version record loadDirective.
	packages := OrderedCollection new.
	directive versionDirectivesDo: [:vrsnDirective | | spec |
	spec := vrsnDirective spec.
	(spec notNil and: [spec project = aConfiguration spec project ])
		ifTrue: [ 
			vrsnDirective packagesDo: [:pkgDirective | 
				packages add: (self extractPackageNameOutOfMetacelloFile: pkgDirective file) ]]].
	^ packages asSet reject: [ :each | each beginsWith: 'ConfigurationOf' ]