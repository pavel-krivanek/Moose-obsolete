tests
testNodeStack
	| parser  |

	parser := XMLDOMParser on: self addressBookXML.
	self assert: parser nodeStack isEmpty.

	parser := XMLDOMParser on: self addressBookXML.
	parser parser parseToken.
	self deny: parser nodeStack isEmpty.

	parser on: self addressBookXML.
	self assert: parser nodeStack isEmpty.