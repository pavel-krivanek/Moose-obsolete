tests
testNamespaceAttributePrefixAliasing
	| xmlns |

	xmlns := 'xmlns:prefix1="ns" xmlns:prefix2="ns"'.
	self
		shouldnt: [
			SAXHandler
				parse: '<test ', xmlns, ' prefix1:name1="value" prefix2:name2="value2"/>'
				usingNamespaces: true]
		raise: XMLNamespaceException.

	(Array
		with: '<test ', xmlns, ' prefix1:aliased="value" prefix2:aliased="value2"/>'
		with: "ensure it checks inherited namespaces"
			'<test ', xmlns, '>
				<test2 prefix1:aliased="value" prefix2:aliased="value2"/>
			</test>'
		with: "and default attributes"
			'<!DOCTYPE test [
				<!ELEMENT test (test2)>
				<!ATTLIST test
					xmlns:prefix1 CDATA #IMPLIED
					xmlns:prefix2 CDATA #IMPLIED>
				<!ELEMENT test2 EMPTY>
				<!ATTLIST test2
					prefix1:aliased CDATA "value"
					prefix2:aliased CDATA "value2">
			]>
			<test ', xmlns, '>
				<test2/>
			</test>')
		do: [:each |
			self
				should: [
					SAXHandler
						parse: each
						usingNamespaces: true]
				raise: XMLNamespaceException.
			self
				shouldnt: [
					SAXHandler
						parse: each
						usingNamespaces: false]
				raise: XMLNamespaceException].