tests
testEntityNestingSubsetProcessingInstruction
	| xml |
	
	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.

	"these are wellformedness exceptions because the replacement is surrounded
	with spaces which interrupt the '<?name' and '?>' sequences"
	#('<!ENTITY % partial "<">%partial;?name value?>'
		'<!ENTITY % partial "<?">%partial;name value?>'
		'<!ENTITY % partial "<?name value?">%partial;>')
		do: [:each |
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException].

	#('<!ENTITY % partial "<?name">%partial; value?>'
		'<!ENTITY % partial "<?name value">%partial;?>')
		do: [:each |
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						isValidating: false;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLException].
	self
		shouldnt: [| dtd |
			dtd := '
				<!ENTITY % total "<?name value?>">
				%total;'.
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> dtd));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLException.