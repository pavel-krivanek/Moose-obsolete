tests
testDefaultPathPrefixPrinting
	| uri copy |

	uri := self relative asXMLURI.

	copy := uri copyWithUserInfo: 'userInfo'.
	self assert: copy printString = ('//userInfo@/', self relative).

	copy := uri copyWithHost: self host.
	self assert: copy printString = ('//', self host, '/', self relative).

	copy := uri copyWithPort: 80.
	self assert: copy printString = ('//:80/', self relative).

	copy := uri copyWithScheme: 'http'.
	self assert: copy printString = ('http:///', self relative).

	copy := uri copyWithQuery: self query.
	self assert: copy printString = (self relative, self queryURIString).

	copy := uri copyWithFragment: self fragment.
	self assert: copy printString = (self relative, self fragmentURIString).