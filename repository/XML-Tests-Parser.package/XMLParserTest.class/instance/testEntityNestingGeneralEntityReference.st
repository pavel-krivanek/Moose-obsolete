tests
testEntityNestingGeneralEntityReference
	"even though general entity refs are bypassed in entity values, they are still
	checked for well formedness (they must be complete), so the only way to declare
	an entity with a replacement containing a '&' is to escape it as char ref"
	#('<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "&#38;">
		]><test>&partial;name;</test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "&#38;name">
		]><test>&partial;;</test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "name;">
		]><test>&&partial;</test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "name;">
		]><test>&name&partial;</test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "&#38;">
		]><test name="&partial;name;"></test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "&#38;name">
		]><test name="&partial;;"></test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "name;">
		]><test name="&&partial;"></test>'
		'<!DOCTYPE test [
			<!ENTITY name "value">
			<!ENTITY partial "name;">
		]><test name="&name&partial;"></test>')
		do: [:each |
			self
				should: [
					(SAXHandler on: each)
						isValidating: false;
						parseDocument]
				raise: XMLWellFormednessException].
	self
		shouldnt: [
			(SAXHandler on:
				'<!DOCTYPE test [
					<!ENTITY name "value">
					<!ENTITY total "&name;">
				]><test name="&total;">&total;</test>')
				isValidating: false;
				parseDocument]
		raise: XMLWellFormednessException.