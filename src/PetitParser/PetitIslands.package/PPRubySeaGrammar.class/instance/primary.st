grammar
primary
	^	((((primaryElement) sea: water) ==> #second) plus) 
			==> [ :args | args select: [ :e | e isEmpty not ]]
	/
		((nil asParser sea: water) ==> [ :args | #() ])