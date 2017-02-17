private
attributeElementsAdd: any 
	
	| attribute |
	attribute := stack top key.
	attribute elements add: any.
	stack top value: stack top value + 1.