accessing - backend
addPackage: anRGPackageDefinition

	self backend forPackage addPackage: anRGPackageDefinition to: self.
	
	self announce: (RPackageRegistered to: anRGPackageDefinition).
