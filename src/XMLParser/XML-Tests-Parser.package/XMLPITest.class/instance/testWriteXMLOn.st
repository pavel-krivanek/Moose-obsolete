tests
testWriteXMLOn
	| pi |

	pi := self newPIWithTargetAndData.
	self assert: pi printString = '<?target data?>'.

	pi data: ' ', pi data.
	self assert: pi printString = '<?target  data?>'.