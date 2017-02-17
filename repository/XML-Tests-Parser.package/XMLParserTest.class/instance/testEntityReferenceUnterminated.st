tests
testEntityReferenceUnterminated
	#('<!DOCTYPE test [
			<!ENTITY % entity "<!ELEMENT test EMPTY>">
			%]><test/>'
		'<!DOCTYPE test [
			<!ENTITY % entity "<!ELEMENT test EMPTY>">
			%;]><test/>'
		'<!DOCTYPE test [
			<!ENTITY % entity "<!ELEMENT test EMPTY>">
			%entity]><test/>'
		'<test>&'
		'<test>&</test>'
		'<test>&amp'
		'<test>&amp</test>'
		'<test>&;'
		'<test>&;</test>')
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