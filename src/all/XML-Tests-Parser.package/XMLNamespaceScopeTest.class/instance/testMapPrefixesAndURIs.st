tests
testMapPrefixesAndURIs
	| outerScope innerScope namespaces |

	namespaces := self namespaces.
	(outerScope := self newNamespaceScope) mapPrefixesAndURIs: namespaces.
	self
		assert: outerScope prefixMappings = namespaces;
		deny: outerScope prefixMappings == namespaces.

	"copying shares dictionary until modified"
	innerScope := outerScope copy.
	self
		assert: innerScope prefixMappings = outerScope prefixMappings;
		assert: innerScope prefixMappings == outerScope prefixMappings.

	"modifying creates new dictionary"
	innerScope mapPrefixesAndURIs: namespaces.
	self
		assert: innerScope prefixMappings = outerScope prefixMappings;
		deny: innerScope prefixMappings == outerScope prefixMappings.