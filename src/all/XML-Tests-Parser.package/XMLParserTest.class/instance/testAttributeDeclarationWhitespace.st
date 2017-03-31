tests
testAttributeDeclarationWhitespace
	#('<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLISTtest name (value) #FIXED "value">]>'
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test name(value) #FIXED "value">]>'
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test name (value)#FIXED "value">]>'
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test name (value) #FIXED"value">]>'
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test name (value) #FIXED "value"name2
			(value) #FIXED "value">]>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].
	#('<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST   test   name  ( value )  #FIXED  "value">]>'
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST test
				name (value) #FIXED "value"
				name2 (value) #FIXED "value">]>'
		'<!DOCTYPE test [
			<!ELEMENT test ANY>
			<!ATTLIST   test   >]>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].