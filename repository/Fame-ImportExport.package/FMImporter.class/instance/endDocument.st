parsing
endDocument
	stack isEmpty should beTrue.
	stack := nil.
	tally should = 0.
	model addAll: elements