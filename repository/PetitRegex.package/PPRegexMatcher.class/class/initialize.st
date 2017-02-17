initialization
initialize
	ParserValidator := PPSearcher new.
	ParserValidator
		matchesAnyOf: (OrderedCollection new 
			add: (PPEpsilonParser new starGreedy: PPPattern any);
			add: ((PPRegexParser beginOfLineParser) starGreedy: PPPattern any);
			add: ((PPRegexParser endOfLineParser) starGreedy: PPPattern any);
			add: ((PPChoiceParser withAll: (Array with: PPListPattern any with: PPEpsilonParser new with: PPListPattern any)) starGreedy: PPPattern any);
			add: ((PPChoiceParser withAll: (Array with: PPListPattern any with: (PPPattern any starGreedy: PPPattern any) with: PPListPattern any)) starGreedy: PPPattern any);
			add: ((PPLimitedChoiceParser withAll: (Array with: PPListPattern any with: PPEpsilonParser new with: PPListPattern any)) starGreedy: PPPattern any);
			add: ((PPLimitedChoiceParser withAll: (Array with: PPListPattern any with: (PPPattern any starGreedy: PPPattern any) with: PPListPattern any)) starGreedy: PPPattern any);
			add: ((PPPattern any starGreedy: PPPattern any) starGreedy: PPPattern any);
			add: ((PPPattern any starGreedy: PPPattern any) plusGreedy: PPPattern any);
			add: ((PPPattern any starLazy: PPPattern any));
			yourself)
		do: [ :node :result | self error: 'Invalid regular expression' ]