grammar-literals-string
infixOpProcessor 

	^ [:node |
		(node second asOrderedCollection addFirst: node first; yourself) fold: [:left :current |
			|operation| 
			operation := PJInfixOperationNode new.
			operation
			left: left;
			operator: current first inputValue asSymbol;
			right: current second.
			operation]]