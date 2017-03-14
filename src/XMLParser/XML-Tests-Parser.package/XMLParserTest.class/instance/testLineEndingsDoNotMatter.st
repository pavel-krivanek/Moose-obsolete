tests
testLineEndingsDoNotMatter
	| source docFromSourceWithCRs docFromSourceWithLFs docFromSourceWithCRLFs |

	source := '<root>{1}one{1}two{1}</root>'.
	docFromSourceWithCRs := XMLDOMParser parse: (source format: (Array with: String cr)).
	docFromSourceWithLFs := XMLDOMParser parse: (source format: (Array with: String lf)).
	docFromSourceWithCRLFs := XMLDOMParser parse: (source format: (Array with: String crlf)).
	self
		assert: (docFromSourceWithCRs root contentString) = (docFromSourceWithLFs root contentString);
		assert: (docFromSourceWithLFs root contentString) = (docFromSourceWithCRLFs root contentString).