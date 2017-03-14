indentation
align
	| aligns |
	
	aligns := self aligns.
	
	^ (aligns not, #space asParser) star, aligns