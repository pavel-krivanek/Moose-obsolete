fixtures
complexWeightedGraph: builder

	| nodes edges |
	nodes := $a to: $s.
	edges := #(($a $b 30) ($b $s 1) ($b $p 4) ($b $c 30) ($d $e 30) ($d $f 20) ($d $j 10) ($e $a 15) ($f $m 8) ($g $h 20) ($g $r 3) ($i $a 14) ($i $k 4) ($i $d 3) ($j $q 5) ($k $l 10) ($k $g 5) ($m $n 7) ($m $o 6) ($n $c 5) ($p $b 5) ($q $i 4)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second weight: #third.
	^ builder
