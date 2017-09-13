accessing
packageImports
	"References the PackageImports owned by the Namespace."
	^ packageImports ifNil: [ packageImports := OPUMLToManyLinks on: self identity opposite: #importingNamespace: ]