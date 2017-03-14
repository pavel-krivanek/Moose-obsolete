comparing
hash
	^ self returnType hash bitXor: [ self simpleName hash bitXor: [ self parameters hash ] ]