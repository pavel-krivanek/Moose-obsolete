tests
testCDataSections
	| writer |

	(writer := XMLWriter new)
		tag: 'cdata'
		with: [
			writer
				cdata: '<escaped name="&value;" />';
				cdata:
					(XMLWriter writeWith: [:w |
						w
							tag: 'escaped'
							with: [w & 'value']])].

	self assert:
		writer contents =
			('<cdata>',
			'<![CDATA[<escaped name="&value;" />]]>',
			'<![CDATA[<escaped>&value;</escaped>]]>',
			'</cdata>').