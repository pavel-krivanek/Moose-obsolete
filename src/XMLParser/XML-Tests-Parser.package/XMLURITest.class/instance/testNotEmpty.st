tests
testNotEmpty
	| uri |

	self allURIStringsDo: [:each |
		uri := each asXMLURI.
		each notEmpty
			ifTrue: [self assert: uri notEmpty]
			ifFalse: [self deny: uri notEmpty].

		uri
			parseURIStringIfUnparsed;
			uriString: nil.
		each notEmpty
			ifTrue: [self assert: uri notEmpty]
			ifFalse: [self deny: uri notEmpty]].

	uri := '//:?#' asXMLURI.
	self deny: uri notEmpty.
	uri
		parseURIStringIfUnparsed;
		uriString: nil.
	self deny: uri notEmpty.