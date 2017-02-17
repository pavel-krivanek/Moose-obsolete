public - executing
stick
	| block |
	self move.
	block := [ :shape :step | self move ].
	movableElement addCallback: (TRTranslationCallback block: block).
	movableElement addCallback: (TRExtentCallback block: block)