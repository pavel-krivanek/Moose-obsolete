tests
testFormattingContent
	| formatter writer tagWriter commentWriter piWriter entityRefWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(tagWriter := writer tag: 'empty') write.
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeStartTag: formatAfterEndTag:)
			with: tagWriter).
	
	(tagWriter := writer tag: 'not-empty')
		xmlns: 'defaultNS';
		attributeAt: 'name' put: 'value';
		with: [
			(commentWriter := writer comment) string: 'test'.
			(piWriter := writer pi)
				target: 'xml-xsl';
				data: 'type="text/xsl" href=''demo.xsl'' title="unterminated'. "deliberately unterminated"
			(entityRefWriter := writer entityRef) name: 'test'].
	self assert:
		(formatter
			receivedNext: #formatBeforeStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'defaultNS').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'value').
	self assert:
		(formatter
			receivedNext: #formatAfterStartTag:
			with: tagWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeComment: formatAfterComment:)
			with: commentWriter).
	self assert:
		(formatter
			receivedNext: #formatBeforePI:
			with: piWriter).
	"only the first two quoted string were properly terminated and recognized"
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'text/xsl').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'demo.xsl').
	self assert:
		(formatter
			receivedNext: #formatAfterPI:
			with: piWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeEntityReference: formatAfterEntityReference:)
			with: entityRefWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeEndTag: formatAfterEndTag:)
			with: tagWriter).

	writer outputsSelfClosingTags: false.
	(tagWriter := writer tag: 'empty') write.
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeStartTag: formatAfterStartTag: formatBeforeEndTag: formatAfterEndTag:)
			with: tagWriter).