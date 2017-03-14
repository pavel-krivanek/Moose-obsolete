class
block
	^ (${ asParser,
		((block sea: water) plus / nil asParser sea: water),
	$} asParser) ==> [:tokens | nil ]
		