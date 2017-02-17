grammar-classes-method
block
	^ super block ==> [ :nodes | 
			| blockNode |
			blockNode := PJBlockNode new.
			blockNode statements: nodes second.
			blockNode]