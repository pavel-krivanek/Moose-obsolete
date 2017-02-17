class
methodModifiers
	^( ('public' asParser / 'private' asParser / 'protected' asParser) optional, 
	  'static' asParser trim optional, 
	  'final' asParser trim optional,
	  'abstract' asParser trim optional,
	  'synchronized' asParser trim optional,	
	  'native' asParser trim optional) ==> [ :tokens | nil ]