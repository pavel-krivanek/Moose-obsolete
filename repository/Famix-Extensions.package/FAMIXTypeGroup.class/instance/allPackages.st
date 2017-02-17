navigation
allPackages

	^ FAMIXPackageGroup withAll: ((self entities select: [:c | c packageScope notNil]) collectAsSet: [:c| c packageScope])