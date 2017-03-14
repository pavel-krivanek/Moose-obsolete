private
allowPackageNamed: packageName
	^ (rejectedPackages includes: packageName) not