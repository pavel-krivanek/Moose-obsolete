tests
testParentAxis
	self
		assertNodeSet:
			(XPath
				for: '//parent::*'
				in: document)
		hasNodes: (document allElementsSelect: [:each | each hasChildren]).

	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/parent::*'
				in: document)
		hasNodes: (XMLNodeList with: document root).

	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/node()/parent::*'
				in: document)
		hasNodes: (document allElementsNamed: 'person').

	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/node()/parent::*[1][position()=1][last()=1]'
				in: document)
		hasNodes: (document allElementsNamed: 'person').
	self assert:
		(XPath
			for: 'addressbook/person/node()/parent::*[2]'
			in: document) isEmpty.
	self assert:
		(XPath
			for: 'addressbook/person/node()/parent::*[position()+1]'
			in: document) isEmpty.

	self
		assertNodeSet:
			(XPath
				for: 'parent::*[1][position()=1][last()=1]'
				in: (document findElementNamed: 'person'))
		hasNodes: (XMLNodeList with: document root).
	self assert:
		(XPath
			for: 'parent::*[2]'
			in: (document findElementNamed: 'person')) isEmpty.
	self assert:
		(XPath
			for: 'parent::*[position() + 1]'
			in: (document findElementNamed: 'person')) isEmpty.

	self
		assertNodeSet:
			(XPath
				for: 'addressbook/person/attribute::node()/parent::node()'
				in: document)
		hasNodes: (document allElementsNamed: 'person').

	self assert:
		(XPath
			for: 'parent::node()'
			in: document) isEmpty.
	self assert:
		(XPath
			for: 'addressbook/parent::*'
			in: document) isEmpty.
	self
		assertNodeSet:
			(XPath
				for: 'addressbook/parent::node()'
				in: document)
		hasNodes: (XMLNodeList with: document)