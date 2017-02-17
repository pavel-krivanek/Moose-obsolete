fixture
setUp
	
	| ab cd ef abcd efg |
	ab := (MalDendrogram with: #a)
		merge: (MalDendrogram with: #b)
		at: 1.
	cd := (MalDendrogram with: #c)
		merge: (MalDendrogram with: #d)
		at: 2.
	ef := (MalDendrogram with: #e)
		merge: (MalDendrogram with: #f)
		at: 3.
	abcd := ab merge: cd at: 4.
	efg := ef
		merge: (MalDendrogram with: #g)
		at: 5.
	dendrogram := abcd merge: efg at: 7	"#(((a 1 b) 4 (c 2 d)) 7 ((e 3 f) 5 g))"