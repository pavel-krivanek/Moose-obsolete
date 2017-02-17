tests
testCreateIndexUniqueWithComplexIdentitifers

	self 
		parse:	'CREATE INDEX BTO_S01.XVERTXT4 ON BTO_S01.TVERTXT
(C95826, C99995, C99996, C95836_1, C63391, 
C95820, C95836_0, C63392, C99991, C99992, 
C99993, C99994)'
		rule: #createIndex.