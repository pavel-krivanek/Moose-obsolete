public - executing
stick
	| block |
	self move.
	block := [ :shape :step | self move ].
	fixedElement addCallback: (TRTranslationCallback block: block).
	fixedElement addCallback: (TRExtentCallback block: block)