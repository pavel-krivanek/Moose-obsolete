tests
testAsXMLEscapedString
	self assert:
		'<test name="&name;">''&value;''</test>' asXMLEscapedString =
			'&lt;test name="&amp;name;"&gt;''&amp;value;''&lt;/test&gt;'