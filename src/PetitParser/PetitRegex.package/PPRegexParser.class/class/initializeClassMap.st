initialization
initializeClassMap
	ClassMap := Dictionary new.
	ClassMap
		at: 'alnum' put: #word asParser;
		at: 'alpha' put: #letter asParser;
		at: 'cntrl' put: #control asParser;
		at: 'digit' put: #digit asParser;
		at: 'graph' put: #control asParser negate;
		at: 'lower' put: #lowercase asParser;
		at: 'print' put: #control asParser negate;
		at: 'punct' put: #punctuation asParser;
		at: 'space' put: #space asParser;
		at: 'upper' put: #uppercase asParser;
		at: 'xdigit' put: #hex asParser