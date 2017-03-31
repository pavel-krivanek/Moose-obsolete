tests
testPreservesCommentNodes
	| configuration |

	configuration := self newConfiguration.
	self
		deny: configuration preservesCommentNodes;
		assert: (configuration preservesCommentNodes: true) == configuration;
		assert: configuration preservesCommentNodes;
		assert: (configuration preservesCommentNodes: false) == configuration;
		deny: configuration preservesCommentNodes.