fixtures
aseSccGraph: builder

	| nodes edges |
	nodes := $a to: $e.
	edges := #(($a $b) ($b $a) ($b $c) ($b $d) ($c $d) ($d $b) ($d $e) ($e $a)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder	
