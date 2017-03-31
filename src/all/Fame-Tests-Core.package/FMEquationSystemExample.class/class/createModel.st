As yet unclassified
createModel

	| metarepo repo importer |
	metarepo := self createMetamodel.
	repo := FMRepository with: metarepo.
	importer := FMImporter new. 
	importer repository: repo. 
	importer importString: self modelString.
	^repo


	"((	self createModel 	))"