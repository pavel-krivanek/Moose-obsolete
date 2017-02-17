fixtures
withoutCyclesComplexGraph: builder
	"for longest path algo"

	| nodes edges |
	nodes :=  #($a $b $c $d $e $f $g $h $i $j $k $l $m $n $o $p $q $r $s).
	edges := #(
		($a $e) ($a $g)
		($b $c) ($b $h)
		($c $o) ($c $q)
		($d $f) ($d $i)
		($f $i)
		($g $f)
		($h $d)
		($i $r)
		($j $k) ($j $l)
		($l $m) ($l $n)
		($o $p)
		($q $p)
		($p $s)
		($r $s)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder