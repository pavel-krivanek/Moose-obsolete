examples
example2

	"self example2"
	^ (self 
		onElements: (Collection withAllSubclasses flatCollect: [:class | class methods])
		containers: #methodClass
		properties: [:element | element isAbstract])
			open.
	
