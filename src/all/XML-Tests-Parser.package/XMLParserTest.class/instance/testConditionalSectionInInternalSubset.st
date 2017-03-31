tests
testConditionalSectionInInternalSubset
	#('<![INCLUDE[ <!-- comment --> ]]>'
		'<![IGNORE[ <!-- comment --> ]]>'
		'<!ENTITY % include "INCLUDE"> <![%include;[ <!-- comment --> ]]>'
		'<!ENTITY % ignore "IGNORE"> <![%ignore;[ <!-- comment --> ]]>'
		) do: [:each |
			self
				should: [SAXHandler parse:'<!DOCTYPE test [', each, ']><test/>']
				raise: XMLWellFormednessException]