tests
testFormattingProlog
	| formatter writer xmlDeclarationWriter doctypeWriter |

	formatter := XMLWriterRecordingFormatterProxy new.
	(writer := XMLWriter new) formatter: formatter.
	(xmlDeclarationWriter := writer xml)
		version: '1.0';
		encoding: 'UTF-16';
		standalone: 'yes';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforeXMLDeclaration:
			with: xmlDeclarationWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'version').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: '1.0').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'encoding').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'UTF-16').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringName: formatAfterQuotedStringName:)
			with: 'standalone').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'yes').
	self assert:
		(formatter
			receivedNext: #formatAfterXMLDeclaration:
			with: xmlDeclarationWriter).

	(doctypeWriter := writer doctype)
		root: 'test';
		publicID: 'public';
		systemID: 'system';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforeDoctypeDeclaration:
			with: doctypeWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'test').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'public').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'system').
	self assert:
		(formatter
			receivedNext: #formatAfterDoctypeDeclaration:
			with: doctypeWriter).

	(doctypeWriter := writer doctype)
		root: 'test';
		systemID: 'system';
		write.
	self assert:
		(formatter
			receivedNext: #formatBeforeDoctypeDeclaration:
			with: doctypeWriter).
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeName: formatAfterName:)
			with: 'test').
	self assert:
		(formatter
			receivedNextAll: #(formatBeforeQuotedStringValue: formatAfterQuotedStringValue:)
			with: 'system').
	self assert:
		(formatter
			receivedNext: #formatAfterDoctypeDeclaration:
			with: doctypeWriter).

	self assert:
		writer contents =
			('<?xml version="1.0" encoding="UTF-16" standalone="yes"?>',
				'<!DOCTYPE test PUBLIC "public" "system">',
				'<!DOCTYPE test SYSTEM "system">').