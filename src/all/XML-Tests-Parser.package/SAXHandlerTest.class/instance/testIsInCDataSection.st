tests
testIsInCDataSection
	| xml parser |

	xml := '<test>one<![CDATA[two]]>three<![CDATA[four]]></test>'.
	parser := SAXTestingMessageRecordingHandler on: xml.
	self deny: parser isInCDataSection.
	parser parseDocument.

	parser allSentMessages
		with: parser isInCDataSectionResults
		do: [:message :result |
			((#(startCData #endCData) includes: message selector)
				or: [message selector == #characters:
					and: [#('two' 'four') includes: message arguments first]])
				ifTrue: [self assert: result]
				ifFalse: [self deny: result]].
	
	parser isInCDataSection: true.
	self assert: parser isInCDataSection.
	parser on: xml.
	self deny: parser isInCDataSection.