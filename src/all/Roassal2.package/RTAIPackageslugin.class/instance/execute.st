hooks
execute
	"Code to be executed"

	Gofer it
	    smalltalkhubUser: 'abergel' project: 'NeuralNetworks';
	    configurationOf: 'NeuralNetworks';
	    loadDevelopment.

	Gofer it
	    smalltalkhubUser: 'abergel' project: 'GeneticAlgo';
	    configurationOf: 'GeneticAlgo';
	    loadDevelopment.
	
	Gofer it
	    smalltalkhubUser: 'abergel' project: 'GeneticAlgo';
	    package: 'GeneticAlgoAndNeuralNetwork';
	    load
