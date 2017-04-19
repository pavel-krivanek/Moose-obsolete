tests
testFormattingPIs
	| formatter writer piWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.

	(piWriter := writer pi)
		target: 'xml-xsl';
		data: 'type="text/xsl" href=''demo.xsl''';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforePI:
			with: piWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'type').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'text/xsl').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'href').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'demo.xsl').
	self assert:
		(formatter
			receivedNext: #formatAfterPI:
			with: piWriter).

	(piWriter := writer pi)
		target: 'xml-xsl';
		data: 'type href';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforePI:
			with: piWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'type').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'href').
	self assert:
		(formatter
			receivedNext: #formatAfterPI:
			with: piWriter).

	(piWriter := writer pi)
		target: 'xml-xsl';
		data: '"text/xsl" ''demo.xsl''';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforePI:
			with: piWriter).
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

	(piWriter := writer pi)
		target: 'xml-xsl';
		data: '"text/xsl" "demo.xsl';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforePI:
			with: piWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'text/xsl').
	self assert:
		(formatter
			receivedNext: #formatAfterPI:
			with: piWriter).

	(piWriter := writer pi)
		target: 'xml-xsl';
		data: '"text/xsl" ''demo.xsl';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforePI:
			with: piWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'text/xsl').
	self assert:
		(formatter
			receivedNext: #formatAfterPI:
			with: piWriter).

	self assert:
		writer contents =
			('<?xml-xsl type="text/xsl" href=''demo.xsl''?>',
				'<?xml-xsl type href?>',
				'<?xml-xsl "text/xsl" ''demo.xsl''?>',
				'<?xml-xsl "text/xsl" "demo.xsl?>',
				'<?xml-xsl "text/xsl" ''demo.xsl?>').