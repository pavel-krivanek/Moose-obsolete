initialize-release
onContainers: aGroup elements: elementsBlockOrSelector properties: propertyBlockOrSelector

	aGroup do: [:part | |elementsCollection|
		elementsCollection := partsAndElements at: part put: OrderedCollection new.
		(elementsBlockOrSelector rtValue: part) do: [:element |
			|propertyValue|
			propertyValue := propertyBlockOrSelector rtValue: element.
			elementsCollection add: element.
			elementsAndPropertyValue at: element put: propertyValue .
		].
	].
