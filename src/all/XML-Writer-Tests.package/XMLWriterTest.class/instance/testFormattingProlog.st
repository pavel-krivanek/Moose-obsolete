tests
testFormattingProlog
	| formatter writer xmlDeclarationWriter doctypeWriter paramEntityDeclarationWriter paramEntityRefWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(xmlDeclarationWriter := writer xml) write.
	self assert:
		(formatter
			receivedNext: #formatBeforeXMLDeclaration:
			with: xmlDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: '1.0').
	self assert:
		(formatter
			receivedNext: #formatAfterXMLDeclaration:
			with: xmlDeclarationWriter).

	(doctypeWriter := writer doctype)
		root: 'test';
		with: [
			(paramEntityDeclarationWriter := writer entityDeclaration)
				isParameter: true;
				name: 'test';
				replacement: 'replacement'.
			(paramEntityRefWriter := writer paramEntityRef) name: 'test'].
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeDoctypeDeclaration: formatBeforeInternalSubset:)
			with: doctypeWriter).
	self assert:
		(formatter
			receivedNext: #formatBeforeDeclaration:
			with: paramEntityDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'replacement').
	self assert:
		(formatter
			receivedNext: #formatAfterDeclaration:
			with: paramEntityDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeEntityReference: formatAfterEntityReference:)
			with: paramEntityRefWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatAfterInternalSubset: formatAfterDoctypeDeclaration:)
			with: doctypeWriter).