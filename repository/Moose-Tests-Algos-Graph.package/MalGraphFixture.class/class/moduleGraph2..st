fixtures
moduleGraph2: builder
	"sample graph from Habib et al for modular decomposition"

	| nodes edges |
	nodes :=  #($u $w $v $z $a $b $c $d).
	edges := #(
		($u $w)
		($w $a) ($w $b) ($w $c) ($w $d) ($w $v)
		($v $b) ($v $d) ($v $z)
		($z $b)
		($a $d)
		($c $v) ($c $z)
		($d $b) ($d $z)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder