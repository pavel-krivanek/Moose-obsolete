tests
testAsXPath
	| path |

	path := '/addressbook' asXPath.
	self
		assert: path class == XPath;
		assert: (document xpath: path) = (self nodeSetClass with: document root);
		assert: path asXPath == path.