as yet unclassified
testSimpleElement
	self parse: '<a>b</a>' rule: #simpleElement to: #('a' 'b').	
	self parse: '<abc> def </ abc>' rule: #simpleElement to: #('abc' 'def').	
		
	self fail: '<a>b</b>' rule: #simpleElement.
	