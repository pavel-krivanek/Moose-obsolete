keywords
kSelf
	^ (($. asParser / word) previous not, 'self' asParser , ($. asParser / word) not) trim ==> #second