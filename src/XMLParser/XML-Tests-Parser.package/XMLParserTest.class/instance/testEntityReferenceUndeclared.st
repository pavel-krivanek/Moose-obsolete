tests
testEntityReferenceUndeclared
	"it's a WFC if there's no DTD or an internal-only DTD that
	contains no param entity refs or if it's standalone"
	#('<test>&undeclared;</test>'
		'<test name="&undeclared;"/>'
		'<DOCTYPE test [
			<!ELMENT test EMPTY>
		]>
		<test>&undeclared;</test>'
		'<DOCTYPE test [
			<!ELMENT test EMPTY>
			<!ATTLIST test name CDATA #IMPLIED>
		]>
		<test name="&undeclared;"/>'
		'<?xml version="1.0" standalone="yes"?>
		<!DOCTYPE test SYSTEM "extern.dtd">
		<test>&undeclared;</test>'
		'<?xml version="1.0" standalone="yes"?>
		<!DOCTYPE test SYSTEM "extern.dtd">
		<test name="&undeclared;"/>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].

	"otherwise it's a validity constraint only"
	#('<!DOCTYPE test SYSTEM "extern.dtd">
		<test>&undeclared;</test>'
		'<!DOCTYPE test SYSTEM "extern.dtd">
		<test name="&undeclared;"/>'
		'<!DOCTYPE test [
			%undeclared;
		]>
		<test>&undeclared;</test>'
		'<!DOCTYPE test [
			%undeclared;
		]>
		<test name="&undeclared;"/>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: each)
						isValidating: false;
						parseDocument]
				raise: XMLWellFormednessException].