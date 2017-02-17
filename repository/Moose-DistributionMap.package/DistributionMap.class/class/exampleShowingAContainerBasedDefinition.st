examples
exampleShowingAContainerBasedDefinition
	"self exampleShowingAContainerBasedDefinition"
	
	"Here we define the containers and how the elements are computed based on such containers"
	|dm |
	dm := self
			onContainers: Collection withAllSubclasses  
			elements: #allInstVarNames 
			properties: [:element | element size > 5].
	dm title: 'Collection subclasses and their instance variables'.
	dm open.
	
