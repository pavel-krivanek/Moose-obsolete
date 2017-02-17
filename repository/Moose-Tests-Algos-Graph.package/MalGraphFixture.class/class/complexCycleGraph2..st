fixtures
complexCycleGraph2: builder
	| nodes edges |
	nodes := $a to: $i.
	edges := #( #($a $b) 	#($a $f)	
					#($b $e) 	#($b $f) 
					#($c $b) 	#($c $a) 	#($c $e) 	#($c $f) 	#($c $g) 	#($c $d) 
					#($d $b)
					#($e $b) 	#($e $d) 	#($e $h) 
					#($f $b) 	#($f $e) 	#($f $d) 
					#($g $b) 	#($g $a) 	#($g $e) 	#($g $f) 	#($g $d) 	#($g $i) ).
	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder