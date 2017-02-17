tests
testElementUnmatchedEndTag
	#('<test></t>'
		'<test></te>'
		'<test></tes>'
		'<test></testing>'
		'<test></Test>'
		'<test></TEST>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]