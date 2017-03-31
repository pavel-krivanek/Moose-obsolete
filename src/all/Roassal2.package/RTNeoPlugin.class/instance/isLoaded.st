testing
isLoaded
	^ (RPackageOrganizer default includesPackageNamed: 'Neo-JSON-Core') and: [ RPackageOrganizer default includesPackageNamed: 'Neo-CSV-Core' ]
 