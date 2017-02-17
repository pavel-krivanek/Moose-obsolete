grammar
literal
	^ super literal ==> [ :node | RBLiteralNode value: node asNumber ]