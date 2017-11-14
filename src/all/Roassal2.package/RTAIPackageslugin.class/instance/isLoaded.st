hooks
isLoaded
	^ (RPackageOrganizer default includesPackageNamed: 'NeuralWorks') and: [ (RPackageOrganizer default includesPackageNamed: 'GeneticAlgo') ]
 