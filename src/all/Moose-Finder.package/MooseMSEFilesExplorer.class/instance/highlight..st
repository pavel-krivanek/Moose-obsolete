private
highlight: text 
	^ PPTextHighlighter new
		parser: PPMSEGrammar new;
		color: 'elementName' with: Color blue muchDarker;
		bold: 'elementName';
		color: 'simpleName' with: Color blue muchDarker;
		color: 'string' with: Color gray muchDarker;
		color: 'number' with: Color gray muchDarker;
		color: 'boolean' with: Color gray muchDarker;
		highlight: text asText