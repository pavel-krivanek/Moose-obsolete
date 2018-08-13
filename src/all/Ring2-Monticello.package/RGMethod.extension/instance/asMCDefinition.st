*Ring2-Monticello
asMCDefinition

	^ MCMethodDefinition 
		className: self parent theNonMetaClass name
		classIsMeta: self parent isMeta
		selector: self name
		category: self protocol
		timeStamp: ''
		source: self sourceCode