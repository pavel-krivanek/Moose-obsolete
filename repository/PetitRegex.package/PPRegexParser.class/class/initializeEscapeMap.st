initialization
initializeEscapeMap
	EscapeMap := Dictionary new.
	EscapeMap
		"only at beginning of string"
		at: $A put: (self condition: [ :stream | stream position = 0 ] message: 'beginning of input expected');
		"only at end of string"		
		at: $Z put: (self condition: [ :stream | stream atEnd ] message: 'end of input expected');
		"an empty string at a word boundary"
		at: $b put: (self condition: [ :stream | self atWordBoundary: stream ] message: 'word boundary expected');
		"an empty string not at a word boundary"
		at: $B put: (self condition: [ :stream | (self atWordBoundary: stream) not ] message: 'no word boundary expected');
		"an empty string at the beginning of a word"
		at: $< put: (self condition: [ :stream | self atBeginOfWord: stream ] message: 'beginning of word expected');
		"an empty string at the end of a word"
		at: $> put: (self condition: [ :stream | self atEndOfWord: stream ] message: 'end of word expected');
		"newline"
		at: $n put: Character lf asParser;
		"carriage return"
		at: $r put: Character cr asParser;
		"tab"
		at: $t put: Character tab asParser;
		"digit"
		at: $d put: #digit asParser;
		"not digit"
		at: $D put: #digit asParser negate;
		"word"
		at: $w put: #word asParser / $_ asParser;
		"not word"
		at: $W put: #word asParser negate;
		"whitespace"
		at: $s put: #space asParser;
		"not whitespace"
		at: $S put: #space asParser negate;
		"backslash"
		at: $\ put: $\ asParser