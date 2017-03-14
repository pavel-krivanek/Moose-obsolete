statements
initializeKeywords

	| vals |
	keywords := Dictionary new.
	vals := #('CROSS' 'INNER' 'JOIN' 'LEFT' 'NATURAL' 'OUTER' 'WHERE' 'NOT' 'BLOB' 'ORDER BY' 'OR' 'FROM' 'COUNT').
	
	vals do: [:eachKeyword |
		keywords at: eachKeyword 
			put: (PP2UnresolvedNode named: ('keyword', eachKeyword first asUppercase asString , eachKeyword allButFirst))].
	
	keywords keysAndValuesDo:  [:key :value |
		(keywords at: key) def: (key asPParser caseInsensitive ,  (self punctuation optional , #word asPParser) not ) token]