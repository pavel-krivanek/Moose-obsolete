tests
testAllNodes
	| nodeWithNodes allNodes |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	self
		assert: allNodes size = 9;
		assert: allNodes first == nodeWithNodes;
		assert: allNodes second isComment;
		assert: allNodes second string = 'before';
		assert: allNodes third class == XMLGeneralEntityDeclaration;
		assert: allNodes fourth class == XMLParameterEntityDeclaration;
		assert: allNodes fifth class == XMLElementDeclaration;
		assert: allNodes sixth class == XMLAttributeDeclaration;
		assert: allNodes seventh class == XMLNotationDeclaration;
		assert: allNodes eighth isPI;
		assert: allNodes ninth isComment;
		assert: allNodes ninth string = 'after'.