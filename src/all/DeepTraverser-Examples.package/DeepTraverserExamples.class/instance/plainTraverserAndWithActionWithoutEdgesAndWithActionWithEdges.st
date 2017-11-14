examples-difference
plainTraverserAndWithActionWithoutEdgesAndWithActionWithEdges
	<gtExample>
	<subjectClass: #DeepTraverserWithoutAction selector: #upToEnd>

	| result1 result2 result3 t1 t2 t3 |
	t1 := self deepTraverserOnGraph1.
	t2 := self deepTraverserWithoutActionOnGraph1.
	t3 := self deepTraverserWithoutEdgesOnGraph1.
	result1 := t1 upToEnd.
	result2 := t2 upToEnd.
	result3 :=  t3 upToEnd.
	
	self assert: result1 = result2.
	self assert: result2 = result3.
	self assert: result3 = result1.
	
	^ { t1 . t2 . t3 }