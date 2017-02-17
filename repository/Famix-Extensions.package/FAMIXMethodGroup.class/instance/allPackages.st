navigation
allPackages

	^ FAMIXPackageGroup withAll: (self entities collectAsSet: [:m | m packageScope])