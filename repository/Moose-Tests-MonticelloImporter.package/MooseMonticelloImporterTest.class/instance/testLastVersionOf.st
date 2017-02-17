tests
testLastVersionOf
	| file projectName mczFile |
	
	"We first check if there are some packages in the local repository. If none, then nothing can be tested"
	importer fileNames ifEmpty: [ ^ self ].
	
	file := importer fileNames first.
	projectName := file copyUpToLast: $-.
	mczFile := importer lastVersionOf: projectName.
	self assert: (mczFile notEmpty).
	
	self should: [importer lastVersionOf: file] raise: Exception.