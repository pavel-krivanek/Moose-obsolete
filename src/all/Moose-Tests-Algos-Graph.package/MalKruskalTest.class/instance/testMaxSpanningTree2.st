tests
testMaxSpanningTree2


	| tree expectedEdges |
	MalGraphFixture complexWeightedGraph: kruskal.
	kruskal maxSpanningTree.
	tree := kruskal run collect: [:e| e asTuple].

	expectedEdges := #(($a $b 30) ($b $s 1) ($b $c 30) ($d $e 30) ($d $f 20) ($d $j 10) ($e $a 15) ($f $m 8) ($g $h 20) ($g $r 3) ($i $a 14) ($i $k 4) ($j $q 5) ($k $l 10) ($k $g 5) ($m $n 7) ($m $o 6) ($p $b 5)).
	expectedEdges do: [:e|
		self assert: (tree includes: e)
	].
	tree do: [:e|
		self assert: (expectedEdges includes: e)	
	]