*roassal2
numberOfLinesOfCode
	(self propertyValueAt: #numberOfLinesOfCode)
		ifNil: [ self
				propertyValueAt: #numberOfLinesOfCode
				put: self sourceCode lineCount ].
	^ self propertyValueAt: #numberOfLinesOfCode