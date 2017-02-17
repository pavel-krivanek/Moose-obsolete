grammar
function
	^ super function ==> [ :nodes | nodes first , (nodes second inject: String new into: [ :r :e | r , ' ' , e ]) , ' ' , nodes third , ' ' , nodes fourth ]