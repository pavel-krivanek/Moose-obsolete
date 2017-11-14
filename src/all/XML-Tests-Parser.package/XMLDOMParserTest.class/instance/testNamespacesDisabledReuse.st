tests
testNamespacesDisabledReuse
	| parser document oldRootScope newRootScope |

	parser := XMLDOMParser on: self addressBookNamespacedXML.
	document :=
		parser
			usesNamespaces: true;
			parseDocument.
	oldRootScope := document root namespaceScope.
	self assert: oldRootScope hasNamespaces.

	document :=
		parser
			on: self addressBookNamespacedXML;
			usesNamespaces: false;
			parseDocument.
	newRootScope := document root namespaceScope.
	self
		deny: newRootScope = oldRootScope;
		deny: newRootScope hasNamespaces.

	self
		should: [
			parser
				on: '<test xmlns:unused="unusedNS"><used:test/></test>';
				usesNamespaces: true;
				parseDocument]
		raise: XMLNamespaceException.
	self
		shouldnt: [
			document :=
				parser
					on: '<test xmlns:unused="unusedNS"><used:test/></test>';
					usesNamespaces: false;
					parseDocument]
		raise: XMLNamespaceException.
	self deny: document root hasNamespaces.