tests
testOnURLUpToLimit
	| parser size |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testOnURLUpToLimit.

	size :=
		(self feedURL asXMLURI
			getUpToLimit: nil
			decoding: false) size.
	self
		shouldnt: [
			parser :=
				SAXHandler
					onURL: self feedURL
					upToLimit: size]
		raise: XMLLimitException.
	self assert: parser documentReadLimit = size.

	self
		should: [
			(SAXHandler
				onURL: self feedURL
				upToLimit: size - 1)
				parseDocument]
		raise: XMLLimitException.