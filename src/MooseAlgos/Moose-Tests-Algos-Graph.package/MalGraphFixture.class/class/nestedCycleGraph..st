fixtures
nestedCycleGraph: builder

	| nodes edges |
	nodes := $a to: $i.
	edges := #(($a $b) ($b $c) ($c $d) ($d $e) ($e $a) ($b $e) ($e $b) ($e $f) ($f $g) ($g $h) ($h $f) ($g $i) ($i $g)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder	
