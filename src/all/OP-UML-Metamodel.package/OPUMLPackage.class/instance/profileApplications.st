accessing
profileApplications
	"References the ProfileApplications that indicate which profiles have been applied to the Package."
	^ profileApplications ifNil: [ profileApplications := OPUMLToManyLinks on: self identity opposite: #applyingPackage: ]