fixtures
aseWeightedCircuitGraph: builder

	| nodes edges |
	nodes := $a to: $h.
	edges := #(($a $b 1) ($b $a 1) ($b $c 1) ($b $d 1) ($c $d 1) ($c $f 1) ($d $b 1) ($d $e 1) ($e $a 1) ($f $g 1) ($g $h 1) ($h $g 1)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second weight: #third.
	^ builder	
