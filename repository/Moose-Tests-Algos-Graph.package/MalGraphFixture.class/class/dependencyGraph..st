fixtures
dependencyGraph: builder

	| nodes edges |
	nodes := $a to: $k.
	edges := #(($a $b) ($a $c) ($c $a) ($c $k) ($d $e) ($d $g) ($d $i) ($e $c) ($e $f) ($f $j) ($g $f) ($g $h) ($g $i) ($h $j)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder