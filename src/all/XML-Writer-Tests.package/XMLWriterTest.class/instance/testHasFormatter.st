tests
testHasFormatter
	| writer |

	writer := XMLWriter new.
	self deny: writer hasFormatter.

	writer formatter: XMLPrettyPrintingWriterFormatter new.
	self assert: writer hasFormatter.

	writer formatter: nil.
	self deny: writer hasFormatter.