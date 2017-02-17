tests
testEntityReplacementSelfReferential
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ENTITY first "&first;">]><root>&first;</root>']
		raise: XMLWellFormednessException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ENTITY % first "&#37;first;">%first;]><root/>']
		raise: XMLWellFormednessException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY first "&second;">
					<!ENTITY second "&first;">]><root>&first;</root>']
		raise: XMLWellFormednessException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % first "&#37;second;">
					<!ENTITY % second "&#37;first;">
					%first;]><root/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY first "&second;">
					<!ENTITY second "<!--replacement-->">]><root>&first;</root>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % first "&#37;second;">
					<!ENTITY % second "<!--replacement-->">
					%first;]><root/>']
		raise: XMLWellFormednessException.