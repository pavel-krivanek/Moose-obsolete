*PetitIndent
indentStack
	^ self propertyAt: #indentStack ifAbsentPut: [ IndentStack new ]