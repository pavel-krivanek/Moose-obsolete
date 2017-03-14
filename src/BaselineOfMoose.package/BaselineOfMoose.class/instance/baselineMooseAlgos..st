baseline
baselineMooseAlgos: spec 
    
	#(
		'Moose-Algos-Graph'
		'Moose-Tests-Algos-Graph'
		'Moose-Algos-HierarchicalGraph'
		'Moose-Tests-Algos-HierarchicalGraph'
		'Moose-Tests-Algos-InformationRetrieval'
		'Moose-Algos-FormalConceptAnalysis'
		'Moose-Tests-Algos-FormalConceptAnalysis'
		'Moose-Algos-Lattice'
		'Moose-Tests-Algos-Lattice'
		'Moose-Algos-LinearAlgebra'
		'Moose-Tests-Algos-LinearAlgebra'
		'Moose-Algos-Clustering'
		'Moose-Algos-InformationRetrieval'
		'Moose-Tests-Algos-Clustering'
		'Moose-Algos-Kontractor'
		'Moose-Tests-Algos-Kontractor'
		'Moose-Algos-GraphObjectTraverser'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #MooseAlgos) ]]
