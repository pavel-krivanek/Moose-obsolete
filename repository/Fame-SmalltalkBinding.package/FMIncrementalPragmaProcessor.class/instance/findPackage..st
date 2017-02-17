private
findPackage: aByteSymbol 
	
	^metamodel 
		packageNamed: aByteSymbol
		ifAbsentPut: [ FM3PackageDescription  new name: aByteSymbol ]