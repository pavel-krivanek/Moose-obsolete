triggering
behaviorDefinitionChangedFrom: oldRGBehavior to: newRGBehavior

	self announce: (ClassModifiedClassDefinition  
		classDefinitionChangedFrom:  oldRGBehavior
		to: newRGBehavior)