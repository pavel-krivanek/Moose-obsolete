grammar
apply
	^ super apply ==> [ :nodes | nodes first , nodes second , (nodes third inject: String new into: [ :r :e | r , ' ' , e ]) , nodes fourth ]