tests
testEntityReferenceUnterminatedInEntityValue
	#('<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY param "&">
		]><test/>',
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY param "&name">
		]><test/>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].

	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test [
					<!ENTITY name "value">
					<!ENTITY param "&name;">
				]><test/>']
		raise: XMLWellFormednessException.