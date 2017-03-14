grammar
cpath
	^ ('::' asParser optional , identifier, (('::' asParser , identifier) star)) flatten