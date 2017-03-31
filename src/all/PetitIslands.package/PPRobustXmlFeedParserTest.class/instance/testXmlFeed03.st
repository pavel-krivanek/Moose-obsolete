as yet unclassified
testXmlFeed03
	self parse: self feed03.
	
	self assert: result size = 3.
	self assert: (result first at:#name) = 'socks'.
	self assert: (result first at:#price) = '123'.
	self assert: (result first at:#availability) = '1'.

	self assert: (result second at:#name) = 'shoes'.
	self assert: (result second at:#price) = '2345'.
	
	self assert: (result third at:#name) = 'shoes'.
	self assert: (result third at:#price) = '3456'.
	self assert: (result third at:#availability) = '0'.
