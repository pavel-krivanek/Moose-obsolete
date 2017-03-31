accessing
rootElement
	"Answer the root element of the receiving document."
	
	^ self children 
		detect: [ :each | each isElement ]
		ifNone: [ nil ]