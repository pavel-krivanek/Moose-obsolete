fixtures
withoutCyclesMediumGraph: builder
	"for longest path algo"

	| nodes edges |
	nodes :=  #($a $b $c $d $e $f $g $h).
	edges := #(
		($a $e) ($a $g)
		($b $c) ($b $h)
		($d $f)
		($g $f)
		($h $d) ).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder