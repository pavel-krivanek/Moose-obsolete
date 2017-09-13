accessing
packageMerges
	"References the PackageMerges that are owned by this Package."
	^ packageMerges ifNil: [ packageMerges := OPUMLToManyLinks on: self identity opposite: #receivingPackage: ]