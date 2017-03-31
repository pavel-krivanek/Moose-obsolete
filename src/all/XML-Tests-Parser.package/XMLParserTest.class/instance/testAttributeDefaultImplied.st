tests
testAttributeDefaultImplied
	| dtd document root |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA #IMPLIED
				one CDATA #REQUIRED
				two CDATA #IMPLIED >
		]>'.

	document :=
		XMLDOMParser parse:
			dtd, '<root one=''nonDefault'' two="nonDefaultTwo" />'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'nonDefault';
		assert: (root attributeAt: 'two') = 'nonDefaultTwo'.

	document := XMLDOMParser parse: dtd, '<root one='''' two="" />'.
	root := document root.
	self
		assert: (root includesAttribute: 'one');
		assert: (root attributeAt: 'one') = '';
		assert: (root includesAttribute: 'two');
		assert: (root attributeAt: 'two') = ''.

	"implied makes them optional"
	document := XMLDOMParser parse: dtd, '<root />'.
	root := document root.
	self
		deny: (root includesAttribute: 'one');
		deny: (root includesAttribute: 'two').