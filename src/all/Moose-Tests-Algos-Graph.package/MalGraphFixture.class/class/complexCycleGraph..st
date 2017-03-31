fixtures
complexCycleGraph: builder

	| nodes edges |
	nodes := $a to: $h.
	edges := #(($a $b) ($a $c) ($a $g) ($b $e) ($c $b) ($c $d) ($d $f) ($f $c) ($g $h) ($g $d) ($h $g)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder