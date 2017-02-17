running
basicRun
	| importerTask elements |
	"importerTask applies an import filter definition (context) on a set of classes (allClasses) and yields elements"
	importerTask := MooseImportClassesTask new importerClass: importerClass.
	importerTask importingContext: importingContext.
	importerTask addAll: self allClasses.
	importerTask addAllExtensions: self allClassExtensions.
	elements := importerTask runSelector: runSelector.
	"InstallElementsOperator populates a Moose model with (unary) elements"
	(InstallElementsOperator 
		with: elements
		on: self model) runSelector: runSelector.
	"CandidateListOperator populates a Moose model with (binary) element relations like: methodA invokes methodB"
	candidateOperator ifTrue: [(self candidateClass runOn: self model) runSelector: runSelector].
	self model sourceLanguage: FAMIXSmalltalkSourceLanguage new.
	^ self model