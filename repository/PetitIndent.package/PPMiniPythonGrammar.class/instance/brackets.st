others
brackets
	^ 
	($( asParser, (multilineComment / onelineString / brackets / $) asParser negate) star, $) asParser) / 
	($[ asParser, (multilineComment / onelineString / brackets / $] asParser negate) star, $] asParser) / 
	(${ asParser, (onelineString / brackets / $} asParser negate) star, $} asParser)