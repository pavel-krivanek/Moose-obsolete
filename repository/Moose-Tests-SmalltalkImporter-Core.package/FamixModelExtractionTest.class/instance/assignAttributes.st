auxiliary
assignAttributes
	nodeName := FAMIXNameResolver 
		mooseNameForAttributeNamed: #name
		class: mseNodeClassName
		classSide: false.
	nextNode := FAMIXNameResolver 
		mooseNameForAttributeNamed: #nextNode
		class: mseNodeClassName
		classSide: false.
	serverType := FAMIXNameResolver 
		mooseNameForAttributeNamed: #serverType
		class: mseOutputServerClassName
		classSide: false