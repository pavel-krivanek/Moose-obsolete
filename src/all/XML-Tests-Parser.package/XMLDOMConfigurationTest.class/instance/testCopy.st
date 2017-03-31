tests
testCopy
	| configuration nodeFactory copy |

	super testCopy.

	nodeFactory := self nodeFactoryClass new.
	(configuration := self newConfiguration)
		preservesCDataNodes: true;
		preservesCommentNodes: true;
		preservesIgnorableWhitespace: true;
		nodeFactory: nodeFactory.
	copy := configuration copy.
	self
		assert: copy preservesCDataNodes = configuration preservesCDataNodes;
		assert: copy preservesCommentNodes = configuration preservesCommentNodes;
		assert: copy preservesIgnorableWhitespace = configuration preservesIgnorableWhitespace;
		deny: copy nodeFactory == configuration nodeFactory;
		assert: copy nodeFactory class = configuration nodeFactory class.