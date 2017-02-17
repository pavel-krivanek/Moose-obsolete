as yet unclassified
testXmlFeed01
	self parse: self feed01.
	
	self assert: result size = 1.
	self assert: (result first at:#name) = 'socks'.
	self assert: (result first at:#price) = '123'.
	self assert: (result first at:#availability) = '1'.
	