tests
testCDataSection
	#('' ']' ']]' ']]]' ']>' ']>]' ']>]>]')
		with: #('' ']' ']]' ']]]' ']&gt;' ']&gt;]' ']&gt;]&gt;]')
		do: [:suffix :escapedSuffix | | document element unescaped escaped xml |
			unescaped :=
				'this is CDATA test content 1 < 2 & 5 > 3', suffix.
			escaped :=
				'this is CDATA test content 1 &lt; 2 &amp; 5 &gt; 3', escapedSuffix.
			xml :=
				'<?xml version="1.0" encoding="UTF-8"?>
				<test-data>test<![CDATA[', unescaped, ']]>test</test-data>'.
			document := XMLDOMParser parse: xml.
			element := document findElementNamed: 'test-data'.
			self
				assert: element nodes size = 1;
				assert: element firstNode isStringNode;
				assert: element firstNode printString = ('test', escaped, 'test').

			document :=
				(XMLDOMParser on: xml)
					preservesCDataNodes: true;
					parseDocument.
			element := document findElementNamed: 'test-data'.
			self
				assert: element nodes size = 3;
				assert: element nodes second isCData;
				assert: element nodes second printString =
					('<![CDATA[', unescaped, ']]>');
				assert: element strings asArray =
					(Array with: 'test' with: unescaped with: 'test')].