as yet unclassified
testXmlFeed02
	self parse: self feed02.
	
	self assert: result size = 2.
	self assert: (result first at:#name) = 'socks'.
	self assert: (result first at:#price) = '123'.
	self assert: (result first at:#availability) = '1'.

	self assert: (result second at:#name) = 'shoes'.
	self assert: (result second at:#price) = '2345'.
	self assert: (result second at:#availability) = '1'.
	