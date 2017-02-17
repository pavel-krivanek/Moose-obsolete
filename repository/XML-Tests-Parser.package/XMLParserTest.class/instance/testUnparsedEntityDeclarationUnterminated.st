tests
testUnparsedEntityDeclarationUnterminated
	#('<!ENTITY name PUBLIC "publicid" "systemid" NDATA'
		'<!ENTITY name PUBLIC "publicid" "systemid" NDATA>'
		'<!ENTITY name PUBLIC "publicid" "systemid" NDATA gif'
		'<!ENTITY name SYSTEM "systemid" NDATA'
		'<!ENTITY name SYSTEM "systemid" NDATA>'
		'<!ENTITY name SYSTEM "systemid" NDATA gif')
		do: [:each |
			self
				should: [
					SAXHandler parse:
						'<!DOCTYPE test [
							<!NOTATION gif SYSTEM "file.gif">',
							each]
				raise: XMLWellFormednessException.
			self
				should: [
					SAXHandler parse:
						'<!DOCTYPE test [
							<!NOTATION gif SYSTEM "file.gif">',
							each,
						']><test/>']
				raise: XMLWellFormednessException].