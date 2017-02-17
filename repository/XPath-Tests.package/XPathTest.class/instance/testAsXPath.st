tests
testAsXPath
	| path |

	path := '/addressbook' asXPath.
	self
		assert: path class == XPath;
		assert: (document xPath: path) = (self nodeSetClass with: document root);
		assert: path asXPath == path.