navigation
allClasses

	^ FAMIXTypeGroup withAll: (self entities collectAsSet: [:m | m parentType])