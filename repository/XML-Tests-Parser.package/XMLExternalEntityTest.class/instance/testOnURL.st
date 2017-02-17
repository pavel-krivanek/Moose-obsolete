tests
testOnURL
	| parser |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testOnURL.

	self
		shouldnt: [parser := SAXHandler onURL: self feedURL]
		raise: XMLHTTPException.
	self
		assert: parser documentURI = self feedURL;
		deny: parser documentURI asXMLURI isLocalURI.