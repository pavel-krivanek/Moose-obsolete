public
listOfRDatasets
	"Return the list of data sets availables
	self listOfRDatasets
	"
	rDataSets ifNil: [ self loadRDatasets ].
	^ rDataSets