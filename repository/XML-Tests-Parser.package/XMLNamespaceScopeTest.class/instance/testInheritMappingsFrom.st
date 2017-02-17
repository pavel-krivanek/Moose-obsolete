tests
testInheritMappingsFrom
	| outerScope innerScope |

	outerScope := self newNamespaceScopeWithNamespaces.
	innerScope := self newNamespaceScope.
	innerScope inheritMappingsFrom: outerScope.
	self assert: innerScope prefixMappings == outerScope prefixMappings.

	innerScope := self newNamespaceScopeWithNamespaces.
	innerScope inheritMappingsFrom: outerScope.
	self
		assert: innerScope prefixMappings = outerScope prefixMappings;
		deny: innerScope prefixMappings == outerScope prefixMappings.