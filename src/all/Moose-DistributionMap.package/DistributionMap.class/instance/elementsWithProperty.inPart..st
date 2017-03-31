private
elementsWithProperty: aPropertySelector inPart: aPart

	^ (partsAndElements at: aPart) select: [: element |
			(elementsAndPropertyValue at: element) = aPropertySelector  
		].