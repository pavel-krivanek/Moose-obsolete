*petitindent
indentStack
	^ self propertyAt: #indentStack ifAbsent: [ IndentStack new ]