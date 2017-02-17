grammar-literals-string
ifStatement  

 ^super ifStatement ==> [:node |
	| statementNode |
	statementNode := PJIfStatementNode new.
	statementNode
		condition: node second;
		thenPart: node third.
	node fourth ifNotNil: [
		statementNode elsePart: node fourth second].
	statementNode]