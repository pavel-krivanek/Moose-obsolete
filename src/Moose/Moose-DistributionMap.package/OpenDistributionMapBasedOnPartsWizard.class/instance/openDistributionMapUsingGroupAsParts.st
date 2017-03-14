wizard panes transition
openDistributionMapUsingGroupAsParts
	(DistributionMap
		onContainers: self mooseGroup
		elements: self elementsBlockOrSelector
		properties: self propertyBlockOrSelector)
		propertyColorMap: self propertyColorMap;
		propertyValuesMap: self propertyValuesMap;
		open