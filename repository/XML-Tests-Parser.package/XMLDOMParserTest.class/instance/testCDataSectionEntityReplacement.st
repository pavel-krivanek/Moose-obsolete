tests
testCDataSectionEntityReplacement
	| document element unescaped escaped xml |

	unescaped := 'this is CDATA test content 1 < 2 & 5 > 3'.
	escaped := 'this is CDATA test content 1 &lt; 2 &amp; 5 &gt; 3'.
	xml := 
		'<?xml version="1.0" encoding="UTF-8"?>
		<!DOCTYPE test-data [
			<!ENTITY cdata "<![CDATA[this is CDATA test content 1 < 2 &#38; 5 > 3]]>">
		]>
		<test-data>test&cdata;test</test-data>'.
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
		assert: element nodes second printString = ('<![CDATA[', unescaped, ']]>');
		assert: element strings asArray = (Array with: 'test' with: unescaped with: 'test').