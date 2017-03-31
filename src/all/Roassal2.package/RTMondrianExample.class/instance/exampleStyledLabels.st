sources
exampleStyledLabels

| b |
b := RTMondrian new.
b shape styledLabel 
	height: 80;
	bold.
b node: 'Hello'.
b shape styledLabel 
	height: 80;
	italic.
b node: 'World'.
^ b