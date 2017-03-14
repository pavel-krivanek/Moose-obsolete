tests
testViewHierarchy

	| group |
	group := FAMIXNamespaceGroup new.
	group add: FAMIXNamespace new.
	group add: FAMIXNamespace new.
	group viewHierarchy delete