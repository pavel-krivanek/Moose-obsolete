scripting actions
act: aBlock entitled: aString categorized: anotherString help: anotherString2
	 
	self 
		addAction: 
			((GLMGenericAction new) 
				action: aBlock; 
				title: aString; 
				category: anotherString;
				help: anotherString2;
				yourself)