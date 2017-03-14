tests
testEntityReferenceUnexpected
	#('<!DOCTYPE test [
			<!ENTITY entity "<!--comment-->">
			&entity;]>
		<test/>'
		'<!DOCTYPE test [
			<!ENTITY entity "<!--comment-->">
			]>
		&entity;
		<test/>'
		'<!DOCTYPE test [
			<!ENTITY entity "<!--comment-->">
			]>
		<test/>
		&entity;')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			"should still raise errors even when replacement is disabled"
			self
				should: [
					(SAXHandler on: each)
						replacesContentEntityReferences: false;
						parseDocument]
				raise: XMLWellFormednessException]