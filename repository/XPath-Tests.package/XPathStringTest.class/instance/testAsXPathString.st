tests
testAsXPathString
	| string |

	string := 'test'.
	self assert: string asXPathString == string.