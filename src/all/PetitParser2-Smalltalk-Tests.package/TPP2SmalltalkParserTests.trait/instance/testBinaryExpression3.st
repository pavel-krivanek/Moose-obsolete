testing-messages
testBinaryExpression3
	super testBinaryExpression3.
	self assert: self result isMessage.
	self assert: self result receiver isLiteralNode.
	self assert: self result receiver value equals: 1.
	self assert: self result selector equals: #//.
	self assert: self result keywordsPositions equals: #(3) asIntegerArray.
	self assert: self result arguments size equals: 1.
	self assert: self result arguments first isLiteralNode.
	self assert: self result arguments first value equals: 2