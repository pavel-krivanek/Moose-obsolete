grammar-literals-string
expression 

 ^super expression ==> [:node | node second ifNil: [node first] ifNotNil: [
		|operation| 
		operation := PJInfixOperationNode new.
		operation
			left: node first;
			operator: node second first inputValue asSymbol;
			right: node second second.
		operation]]