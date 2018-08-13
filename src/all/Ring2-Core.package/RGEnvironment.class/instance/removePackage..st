accessing - backend
removePackage: anRGPackageDefinition

	self backend forPackage removePackage: anRGPackageDefinition from: self.
	
	self announce: (RPackageUnregistered to: anRGPackageDefinition).
