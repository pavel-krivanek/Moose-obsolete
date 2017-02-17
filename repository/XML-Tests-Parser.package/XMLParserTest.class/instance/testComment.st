tests
testComment
	self
		shouldnt: [SAXHandler parse: '<test><!-- <comment/> - - --></test>']
		raise: XMLWellFormednessException.
	"can't contain --"
	self
		should: [SAXHandler parse: '<test><!-- <comment/> -- --></test>']
		raise: XMLWellFormednessException.