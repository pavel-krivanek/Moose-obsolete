tests
testEntityReplacementTerminatingInternalSubset
	#('<!DOCTYPE root [<!ENTITY % end "]>">%end;'
		'<!DOCTYPE root [<!ENTITY % end "]">%end;>')
		do: [:each |
			self
				should: [SAXHandler parse: each,  '<root/>']
				raise: XMLWellFormednessException].
	#('<!DOCTYPE root [<!ENTITY % end "">%end;]>'
		'<!DOCTYPE root [<!ENTITY % end "<!--]>-->">%end;]>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each,  '<root/>']
				raise: XMLWellFormednessException].