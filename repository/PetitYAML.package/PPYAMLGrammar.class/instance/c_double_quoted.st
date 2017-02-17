spec
c_double_quoted
	^ ($" asParser, nb_double_text, $" asParser) map: [ :first :text :second |
		"first asString, text, second asString"
		text
	] 