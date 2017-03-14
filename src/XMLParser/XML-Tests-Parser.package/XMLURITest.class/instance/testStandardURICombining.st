tests
testStandardURICombining
	"Generated from RFC 3986, page 34-36"

	| baseURI |

	baseURI := 'http://a/b/c/d;p?q' asXMLURI.
	self
		assert: (baseURI / 'g:h' asXMLURI) = 'g:h' asXMLURI;
		assert: (baseURI / 'g' asXMLURI) = 'http://a/b/c/g' asXMLURI;
		assert: (baseURI / './g' asXMLURI) = 'http://a/b/c/g' asXMLURI;
		assert: (baseURI / 'g/' asXMLURI) = 'http://a/b/c/g/' asXMLURI;
		assert: (baseURI / '/g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseURI / '//g' asXMLURI) = 'http://g' asXMLURI;
		assert: (baseURI / '?y' asXMLURI) = 'http://a/b/c/d;p?y' asXMLURI;
		assert: (baseURI / 'g?y' asXMLURI) = 'http://a/b/c/g?y' asXMLURI;
		assert: (baseURI / '#s' asXMLURI) = 'http://a/b/c/d;p?q#s' asXMLURI;
		assert: (baseURI / 'g#s' asXMLURI) = 'http://a/b/c/g#s' asXMLURI;
		assert: (baseURI / 'g?y#s' asXMLURI) = 'http://a/b/c/g?y#s' asXMLURI;
		assert: (baseURI / ';x' asXMLURI) = 'http://a/b/c/;x' asXMLURI;
		assert: (baseURI / 'g;x' asXMLURI) = 'http://a/b/c/g;x' asXMLURI;
		assert: (baseURI / 'g;x?y#s' asXMLURI) = 'http://a/b/c/g;x?y#s' asXMLURI;
		assert: (baseURI / '' asXMLURI) = 'http://a/b/c/d;p?q' asXMLURI;
		assert: (baseURI / '.' asXMLURI) = 'http://a/b/c/' asXMLURI;
		assert: (baseURI / './' asXMLURI) = 'http://a/b/c/' asXMLURI;
		assert: (baseURI / '..' asXMLURI) = 'http://a/b/' asXMLURI;
		assert: (baseURI / '../' asXMLURI) = 'http://a/b/' asXMLURI;
		assert: (baseURI / '../g' asXMLURI) = 'http://a/b/g' asXMLURI;
		assert: (baseURI / '../..' asXMLURI) = 'http://a/' asXMLURI;
		assert: (baseURI / '../../' asXMLURI) = 'http://a/' asXMLURI;
		assert: (baseURI / '../../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseURI / '../../../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseURI / '../../../../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseURI / '/./g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseURI / '/../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseURI / 'g.' asXMLURI) = 'http://a/b/c/g.' asXMLURI;
		assert: (baseURI / '.g' asXMLURI) = 'http://a/b/c/.g' asXMLURI;
		assert: (baseURI / 'g..' asXMLURI) = 'http://a/b/c/g..' asXMLURI;
		assert: (baseURI / '..g' asXMLURI) = 'http://a/b/c/..g' asXMLURI;
		assert: (baseURI / './../g' asXMLURI) = 'http://a/b/g' asXMLURI;
		assert: (baseURI / './g/.' asXMLURI) = 'http://a/b/c/g/' asXMLURI;
		assert: (baseURI / 'g/./h' asXMLURI) = 'http://a/b/c/g/h' asXMLURI;
		assert: (baseURI / 'g/../h' asXMLURI) = 'http://a/b/c/h' asXMLURI;
		assert: (baseURI / 'g;x=1/./y' asXMLURI) = 'http://a/b/c/g;x=1/y' asXMLURI;
		assert: (baseURI / 'g;x=1/../y' asXMLURI) = 'http://a/b/c/y' asXMLURI;
		assert: (baseURI / 'g?y/./x' asXMLURI) = 'http://a/b/c/g?y/./x' asXMLURI;
		assert: (baseURI / 'g?y/../x' asXMLURI) = 'http://a/b/c/g?y/../x' asXMLURI;
		assert: (baseURI / 'g#s/./x' asXMLURI) = 'http://a/b/c/g#s/./x' asXMLURI;
		assert: (baseURI / 'g#s/../x' asXMLURI) = 'http://a/b/c/g#s/../x' asXMLURI;
		assert: (baseURI / 'http:g' asXMLURI) = 'http:g' asXMLURI