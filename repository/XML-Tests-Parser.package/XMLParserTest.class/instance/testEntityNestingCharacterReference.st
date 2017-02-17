tests
testEntityNestingCharacterReference
	"even though general entity refs are bypassed in entity values, they are still
	checked for well formedness (they must be complete), so the only way to have an
	entity value containing part of a general ref is to use a char escape for the &"
	#('<!DOCTYPE test [
				<!ENTITY partial "&#38;">
			]><test>&partial;#64;</test>'
		'<!DOCTYPE test [
				<!ENTITY partial "&#38;#">
			]><test>&partial;64;</test>'
		'<!DOCTYPE test [
				<!ENTITY partial "&#38;#64">
			]><test>&partial;;</test>'
		'<!DOCTYPE test [
				<!ENTITY partial "#64;">
			]><test>&&partial;</test>'
		'<!DOCTYPE test [
				<!ENTITY partial "64;">
			]><test>&#&partial;</test>'
		'<!DOCTYPE test [
				<!ENTITY partial ";">
			]><test>&#64&partial;</test>'
		'<!DOCTYPE test [
				<!ENTITY partial "&#38;">
			]><test name="&partial;#64;"></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "&#38;#">
			]><test name="&partial;64;"></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "&#38;#64">
			]><test name="&partial;;"></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "#64;">
			]><test name="&&partial;"></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "64;">
			]><test name="&#&partial;"></test>'
		'<!DOCTYPE test [
				<!ENTITY partial ";">
			]><test name="&#64&partial;"></test>')
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
					<!ENTITY total "&#38;#64;">
				]><test name="&total;">&total;</test>')
				isValidating: false;
				parseDocument]
		raise: XMLWellFormednessException.