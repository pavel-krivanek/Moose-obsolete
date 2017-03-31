tests
testContentEscaping
	| writer |

	(writer := XMLWriter new)
		tag
			name: 'test';
			attributeAt: 'escaped' put: '& " < >';
			xmlns: '& " < >';
			with: '& " < >'.
	self assert:
		writer contents =
			'<test xmlns="&amp; &quot; &lt; >" escaped="&amp; &quot; &lt; >">&amp; " &lt; &gt;</test>'.

	((writer := XMLWriter new)
		isEscaping: false;
		tag)
			name: 'test';
			xmlns: '& " < >';
			attributeAt: 'unescaped' put: '& " < >';
			with: '& " < >'.
	self assert: writer contents = '<test xmlns="& " < >" unescaped="& " < >">& " < ></test>'.