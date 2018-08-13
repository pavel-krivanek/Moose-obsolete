as yet unclassified
realPackageFor: anRGPackageDefinition

	^ RPackageOrganizer default packageNamed: anRGPackageDefinition name ifAbsent: [nil].