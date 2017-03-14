tests
testAbbreviatedSteps
	| result |

	result := self nodeSetClass with: document.
	self
		assert: (document xPath: '.') = result;
		assert: (document xPath: './.') = result;
		assert: (document xPath: './..') isEmpty;
		assert: (document xPath: '..') isEmpty;
		assert: (document xPath: '../..') isEmpty;
		assert: (document xPath: '/.') = result;
		assert: (document xPath: '/./.') = result;
		assert: (document xPath: '/./..') isEmpty;
		assert: (document xPath: '/..') isEmpty;
		assert: (document xPath: '/../..') isEmpty.

	result := document allElementsNamed: 'person'.
	self
		assert: (document xPath: './addressbook/./person/.') = result;
		assert: (document xPath: '././addressbook/././person/./.') = result;
		assert: (document xPath: './addressbook/../addressbook/person/../person') = result;
		assert: (document xPath: './addressbook/./../addressbook/./person/./../person') = result.

	"abbreviated steps can't have predicates"
	self
		should: [document xPath: '.[true()]']
		raise: XPathSyntaxException.
	self
		should: [document xPath: '..[true()]']
		raise: XPathSyntaxException.
	self
		should: [document xPath: '/.[true()]']
		raise: XPathSyntaxException.
	self
		should: [document xPath: '/..[true()]']
		raise: XPathSyntaxException.