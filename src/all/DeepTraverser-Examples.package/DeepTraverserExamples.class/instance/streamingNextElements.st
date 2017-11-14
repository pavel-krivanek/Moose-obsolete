examples-streaming
streamingNextElements
	<gtExample>
	| traverser |
	traverser := self streamingTraverser.
	
	self assert: traverser hasNext.
	self assert: traverser current isNil.
	self assert: traverser position = 0.
	self assert: traverser atEnd not.
	
	self assert: (traverser next: 1) = { $a }.
	self assert: traverser atEnd not.
	
	self assert: (traverser next: 3) = { $b. $c. $d }.
	self assert: traverser atEnd not.
	
	self assert: (traverser next: 4) = { $e. $f. $g. $h }.
	self assert: traverser atEnd not.
	
	self assert: (traverser next: 100) = { $i. $j. $k. }.
	self assert: traverser atEnd.
	
	self assert: (traverser next: 100) = {}.
	self assert: traverser atEnd.
	
	self assert: (traverser next: 100) = {}.
	self assert: traverser atEnd.
	
	^ traverser