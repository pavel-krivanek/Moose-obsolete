tests
testNew
	| uri |

	uri := XMLURI new.
	self
		assert: uri uriString = '';
		assert: uri isEmpty.