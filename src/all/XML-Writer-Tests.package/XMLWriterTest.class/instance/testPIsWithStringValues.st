tests
testPIsWithStringValues
	| writer |

	writer := XMLWriter new.
	writer pi
		target: 'xml-xsl';
		data: 'type="text/xsl" href=''demo.xsl'''.
	writer pi
		target: 'xml-xsl';
		data: 'type="''text''/xsl" href=''"demo".xsl'''.
	writer pi
		target: 'xml-xsl';
		data: 'type="text/xsl" href=''demo.xsl'.
	writer pi
		target: 'xml-xsl';
		data: 'type="text/xsl" href="demo.xsl'.
	writer tag: 'test'.

	"it should print PI data as-is, preserving the quotes exactly"
	self assert:
		writer contents =
			('<?xml-xsl type="text/xsl" href=''demo.xsl''?>',
				'<?xml-xsl type="''text''/xsl" href=''"demo".xsl''?>',
				'<?xml-xsl type="text/xsl" href=''demo.xsl?>',
				'<?xml-xsl type="text/xsl" href="demo.xsl?>',
				'<test />').