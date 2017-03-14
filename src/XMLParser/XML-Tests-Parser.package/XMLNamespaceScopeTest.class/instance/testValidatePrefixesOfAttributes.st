tests
testValidatePrefixesOfAttributes
	| scope attributes |

	scope := self newNamespaceScopeWithNamespaces.
	attributes :=
		self namespaces keys collect: [:each |
			each = ''
				ifTrue: ['name']
				ifFalse: [each, ':name']].
	self
		shouldnt: [
			scope validatePrefixesOfAttributes: attributes]
		raise: XMLNamespaceException.
	self
		should: [
			scope validatePrefixesOfAttributes:
				(attributes copyWith: 'undeclared:name')]
		raise: XMLNamespaceException.
	self
		should: [
			scope validatePrefixesOfAttributes:
				(attributes copyWith: ':name')]
		raise: XMLNamespaceException.

	self namespaces keysAndValuesDo: [:prefix :uri | | attribute |
		scope
			mapPrefix: 'alias', prefix
			to: uri.
		attribute := 'alias', prefix, ':name'.
		prefix = ''
			ifTrue: [
				self
					shouldnt: [
						scope validatePrefixesOfAttributes:
							(attributes copyWith: attribute)]
					raise: XMLNamespaceException]
			ifFalse: [
				self
					should: [
						scope validatePrefixesOfAttributes:
							(attributes copyWith: attribute)]
					raise: XMLNamespaceException]].