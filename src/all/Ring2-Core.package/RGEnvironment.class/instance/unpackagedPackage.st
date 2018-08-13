unpackaged 
unpackagedPackage

	| aProtocol |
	aProtocol := RGPackageDefinition unresolvedWithParent: self.
	aProtocol pvtName: self unpackagedPackageName.
	
	^ aProtocol
