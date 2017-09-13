accessing
nestedPackages
	"References the packaged elements that are Packages."
	^ nestedPackages ifNil: [ nestedPackages := OPUMLToManyLinks on: self identity opposite: #nestingPackage: ]