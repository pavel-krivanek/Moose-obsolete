*Moose-Finder
gtExampleGTModel
	"<gtExample: 'GT-* model'> => tests run super slow "
	| model importer |
	model := self new.
	model name: 'GT-*'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model.
	RPackageOrganizer default packages 
		select: [ :each | each packageName beginsWith: 'GT-' ] 
		thenDo: [ :package | importer addFromPackage: package ].
	importer runWithProgress.
	model install.
	^ model