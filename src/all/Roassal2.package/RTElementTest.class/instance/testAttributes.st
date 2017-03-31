attributes
testAttributes
	| el |
	el := RTElement new.
	self deny: el hasAttributes.
	self assert: (el hasNotAttribute: #oldColor).
	el attributes at: #oldColor put: Color black.
	self assert: el hasAttributes.
	self deny: (el hasNotAttribute: #oldColor).
	
