tests
testPreservesCDataNodes
	| configuration |

	configuration := self newConfiguration.
	self
		deny: configuration preservesCDataNodes;
		assert: (configuration preservesCDataNodes: true) == configuration;
		assert: configuration preservesCDataNodes;
		assert: (configuration preservesCDataNodes: false) == configuration;
		deny: configuration preservesCDataNodes.