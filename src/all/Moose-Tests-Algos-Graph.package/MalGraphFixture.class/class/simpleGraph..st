fixtures
simpleGraph: builder

	| nodes edges |
	nodes := $a to: $d.
	edges := #(($a $b) ($b $c) ($d $c)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder
