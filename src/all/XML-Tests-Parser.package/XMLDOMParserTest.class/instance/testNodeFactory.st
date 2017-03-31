tests
testNodeFactory
	| parser oldNodeFactory newNodeFactory |

	parser := XMLDOMParser on: self addressBookXML.
	oldNodeFactory := parser nodeFactory.
	self assert: oldNodeFactory class == self nodeFactoryClass.

	newNodeFactory := self nodeFactoryClass new.
	self
		assert: (parser nodeFactory: newNodeFactory) == parser;
		assert: parser nodeFactory == newNodeFactory.