tests
testEntityValueEscaping
	| writer |

	(writer := XMLWriter new)
		entityDeclaration
			name: 'test';
			replacement: '% " < >';
			write.
	self assert: writer contents = '<!ENTITY test "&#37; &#34; < >">'.

	((writer := XMLWriter new)
		isEscaping: false;
		entityDeclaration)
			name: 'test';
			replacement: '% " < >';
			write.
	self assert: writer contents = '<!ENTITY test "% " < >">'.
