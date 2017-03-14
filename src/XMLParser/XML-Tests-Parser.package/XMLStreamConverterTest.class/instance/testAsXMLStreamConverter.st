tests
testAsXMLStreamConverter
	| streamConverter |

	streamConverter := self newStreamConverter.
	self assert: streamConverter asXMLStreamConverter == streamConverter.