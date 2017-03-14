fixtures
cycleGraph: builder

	| nodes edges |
	nodes := $a to: $d.
	edges := #(($a $b) ($b $c) ($c $a) ($d $c)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder