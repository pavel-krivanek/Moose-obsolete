keywords
kClassIS
	^ (($. asParser / word) previous not, setIl, 'class' asParser , ($. asParser / word) not) ==> #third