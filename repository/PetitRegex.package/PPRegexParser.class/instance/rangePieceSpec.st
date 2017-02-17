grammar-operators
rangePieceSpec
	"{n,m}	at least n but not more than m times
	{n,}	at least n times
	{n}	exactly n times"
	
	^ number optional , $, asParser optional , number optional
		map: [ :n :op :m | (n ifNil: [ 0 ]) to: (m ifNil: [ SmallInteger maxVal ]) ]