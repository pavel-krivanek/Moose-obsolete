tests
testNodeFactory
	| nodeWithElements oldNodeFactory newNodeFactory |

	nodeWithElements := self newNodeWithElements.
	oldNodeFactory := nodeWithElements nodeFactory.
	self assert: oldNodeFactory class == self nodeFactoryClass.

	newNodeFactory := self nodeFactoryClass new.
	self
		assert: (nodeWithElements nodeFactory: newNodeFactory) == nodeWithElements;
		assert: nodeWithElements nodeFactory == newNodeFactory.