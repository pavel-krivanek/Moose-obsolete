tests
testMinSpanningTree1

	| tree expectedEdges |
	MalGraphFixture complexWeightedGraph: kruskal.
	tree := kruskal run collect: [:e| e asTuple].

	expectedEdges := #(($a $b 30) ($b $s 1) ($b $p 4) ($d $f 20) ($e $a 15) ($f $m 8) ($g $h 20) ($g $r 3) ($i $a 14) ($i $k 4) ($i $d 3) ($j $q 5) ($k $l 10) ($k $g 5) ($m $n 7) ($m $o 6) ($n $c 5) ($q $i 4)).
	"self assert: tree asArray = expectedEdges."
	expectedEdges do: [:e|
		self assert: (tree includes: e)
	].
	tree do: [:e|
		self assert: (expectedEdges includes: e)	
	]