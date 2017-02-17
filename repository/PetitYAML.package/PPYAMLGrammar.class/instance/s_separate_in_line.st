spec
s_separate_in_line
	^ #blank asParser plus flatten / (#startOfLine asParser ==> [ :e | '' ])