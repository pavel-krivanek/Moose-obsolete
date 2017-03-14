fixtures
aseCircuitGraph: builder

	| nodes edges |
	nodes := $a to: $h.
	edges := #(($a $b) ($b $a) ($b $c) ($b $d) ($c $d) ($c $f) ($d $b) ($d $e) ($e $a) ($f $g) ($g $h) ($h $g)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder	
