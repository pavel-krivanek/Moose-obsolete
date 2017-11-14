tests
testEntityReferenceInternalDeclaration
	#('<!DOCTYPE root [
			<!ENTITY % name "root">
			<!ENTITY % contentModel "EMPTY">
			<!ELEMENT %name; %contentModel;>
		]><root/>'
		'<!DOCTYPE root [
			<!ENTITY % name "value">
			<!ENTITY % name2 "%name;">
		]><root/>'
		'<!DOCTYPE root [
			<!ENTITY % name "value">
			<!ENTITY name2 "%name;">
		]><root/>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % element "<!ELEMENT root EMPTY>">
					%element;
				]><root/>']
		raise: XMLWellFormednessException.