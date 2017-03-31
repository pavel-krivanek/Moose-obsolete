tests
testAbbreviatedSteps
	| expected |

	self
		assertNodeSet: (document xpath: '.')
		hasNode: document.
	self
		assertNodeSet: (document xpath: './.')
		hasNode: document.
	self
		assert: (document xpath: './..') isEmpty;
		assert: (document xpath: '..') isEmpty;
		assert: (document xpath: '../..') isEmpty.
	self
		assertNodeSet: (document xpath: '/.')
		hasNode: document.
	self
		assertNodeSet: (document xpath: '/./.')
		hasNode: document.
	self
		assert: (document xpath: '/./..') isEmpty;
		assert: (document xpath: '/..') isEmpty;
		assert: (document xpath: '/../..') isEmpty.

	expected := document allElementsNamed: 'person'.
	self
		assertNodeSet: (document xpath: './addressbook/./person/.')
		hasNodes: expected.
	self
		assertNodeSet: (document xpath: '././addressbook/././person/./.')
		hasNodes: expected.
	self
		assertNodeSet: (document xpath: './addressbook/../addressbook/person/../person')
		hasNodes: expected.
	self
		assertNodeSet: (document xpath: './addressbook/./../addressbook/./person/./../person')
		hasNodes: expected.

	"abbreviated steps can't have predicates"
	self
		should: [document xpath: '.[true()]']
		raise: XPathSyntaxException.
	self
		should: [document xpath: '..[true()]']
		raise: XPathSyntaxException.
	self
		should: [document xpath: '/.[true()]']
		raise: XPathSyntaxException.
	self
		should: [document xpath: '/..[true()]']
		raise: XPathSyntaxException.