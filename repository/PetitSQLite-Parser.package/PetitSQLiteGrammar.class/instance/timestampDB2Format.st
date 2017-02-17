statements-elements
timestampDB2Format
	^date , $- asPParser , ((#digit asPParser times: 2) flatten , $. asPParser , (#digit asPParser times: 2) flatten , $. asPParser , (#digit asPParser times: 2) flatten , ($. asPParser , #digit asPParser plus) optional flatten)