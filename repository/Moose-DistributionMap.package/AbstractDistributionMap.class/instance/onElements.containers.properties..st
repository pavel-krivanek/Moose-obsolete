initialize-release
onElements: aGroup containers: containersBlockOrSelector properties: propertyBlockOrSelector

	aGroup do: [ :element | 
		| part propertyValue |
		part := containersBlockOrSelector rtValue: element.
		propertyValue := propertyBlockOrSelector rtValue: element.
		(partsAndElements at: part ifAbsentPut: [OrderedCollection new])
			add: element.
		elementsAndPropertyValue at: element put: propertyValue
	].
