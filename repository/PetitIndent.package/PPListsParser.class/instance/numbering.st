as yet unclassified
numbering
	^ #digit asParser plus, 
	   ($. asParser, #digit asParser plus) star,
	   $) asParser optional