class
classBody
	 ^ 
	(${ asParser,
		(
		(
			((methodDefInClassBody / javaClassInClassBody) sea: water) ==> #second
		) plus /
		((nil asParser sea: water) ==> [ :tokens | OrderedCollection new ])
		),
	$} asParser) 
	
	map: [:_open :_content :_close | _content ]