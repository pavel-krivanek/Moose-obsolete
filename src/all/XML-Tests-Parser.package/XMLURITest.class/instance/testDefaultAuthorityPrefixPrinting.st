tests
testDefaultAuthorityPrefixPrinting
	| uri copy |

	uri := '' asXMLURI.

	copy := uri copyWithUserInfo: 'userInfo'.
	self assert: copy printString = ('//userInfo@').

	copy := uri copyWithHost: self host.
	self assert: copy printString = ('//', self host).

	copy := uri copyWithPort: 80.
	self assert: copy printString = '//:80'.

	copy := uri copyWithPath: self relative.
	self assert: copy printString = self relative.

	copy := uri copyWithPath: self absolute.
	self assert: copy printString = self absolute.

	copy := uri copyWithQuery: self query.
	self assert: copy printString = self queryURIString.

	copy := uri copyWithFragment: self fragment.
	self assert: copy printString = self fragmentURIString.