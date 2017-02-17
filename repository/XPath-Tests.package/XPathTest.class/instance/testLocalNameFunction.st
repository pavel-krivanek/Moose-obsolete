tests
testLocalNameFunction
	self assert:
		(XPath
			for: 'local-name(addressbook/person[1]/*[last()]/preceding::*)'
			in: document) = 'contact-info'.
	self assert:
		(XPath
			for: 'local-name(addressbook/absent)'
			in: document) isEmpty.
	self assert:
		(XPath
			for: 'local-name(//comment())'
			in: document) isEmpty.
	self assert:
		(XPath
			for: 'local-name()'
			in: document root) = 'addressbook'.