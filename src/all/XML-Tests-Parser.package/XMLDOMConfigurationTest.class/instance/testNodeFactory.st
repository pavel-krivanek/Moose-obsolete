tests
testNodeFactory
	| configuration oldNodeFactory newNodeFactory |

	configuration := self newConfiguration.
	oldNodeFactory := configuration nodeFactory.
	self assert: oldNodeFactory class == self nodeFactoryClass.

	newNodeFactory := self nodeFactoryClass new.
	self
		assert: (configuration nodeFactory: newNodeFactory) == configuration;
		assert: configuration nodeFactory == newNodeFactory.