grammar-classes-method
returnStatement
	^ super returnStatement ==> [ :nodes | 
			| returnNode |
			returnNode := PJReturnStatementNode new.
			returnNode expression: nodes second.
			returnNode]