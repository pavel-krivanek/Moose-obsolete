grammar
attributes
	^ super attributes ==> [ :nodes | 
		nodes 
			inject: OrderedCollection new
			into: [ :result :each | result addLast: each; yourself ] ]