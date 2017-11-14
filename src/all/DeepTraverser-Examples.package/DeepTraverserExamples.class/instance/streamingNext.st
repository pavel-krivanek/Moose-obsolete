examples-streaming
streamingNext
	<gtExample>
	| traverser |
	traverser := self streamingTraverser.
	
	self assert: traverser hasNext.
	self assert: traverser current isNil.
	self assert: traverser position = 0.
	
	self assert: traverser next = $a.
	self assert: traverser current = $a.
	self assert: traverser previous isNil.
	self assert: traverser position = 1.
	
	self assert: traverser next = $b.	
	self assert: traverser current = $b.
	self assert: traverser previous = $a.
	self assert: traverser position = 2.
		
	self assert: traverser next = $c.
	self assert: traverser next = $d.
	self assert: traverser next = $e.
	self assert: traverser next = $f.
	self assert: traverser next = $g.
	self assert: traverser next = $h.
	self assert: traverser next = $i.
	self assert: traverser next = $j.
	self assert: traverser next = $k.
	
	self assert: traverser atEnd.
	
	^ traverser