tests
testAttributeValueExternalEntityReference
	| xmlTemplate entities xml |
	
	xmlTemplate := '
		<!DOCTYPE test [
			<!ENTITY internal "value">
			<!ENTITY external SYSTEM  "extern.ent">
			<!ENTITY interalReferencingExternal "&external;">
			<!ENTITY
				interalReferencinginteralReferencingExternal
				"&interalReferencingExternal;">
		]>
		<test name="&{1};"/>'.
	entities := Array with: 'extern.ent' -> 'value'.

	self
		shouldnt: [
			xml := xmlTemplate format: (Array with: 'internal').
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities: entities);
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLWellFormednessException.

	#('external' 'interalReferencingExternal'
		'interalReferencinginteralReferencingExternal')
		do: [:each |
			xml := xmlTemplate format: (Array with: each).
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities: entities);
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException].