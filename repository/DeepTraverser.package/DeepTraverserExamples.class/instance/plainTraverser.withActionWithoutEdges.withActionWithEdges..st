examples-difference
plainTraverser: t1 withActionWithoutEdges: t2 withActionWithEdges: t3
	<gtExample>
	<dependsOn: #deepTraverserOnGraph1:>
	<dependsOn: #deepTraverserWithoutActionOnGraph1:>
	<dependsOn: #deepTraverserWithoutEdgesOnGraph1:>
	<subjectClass: #DeepTraverserWithoutAction selector: #upToEnd>

	| result1 result2 result3 |
	result1 := t1 upToEnd.
	result2 := t2 upToEnd.
	result3 :=  t3 upToEnd.
	
	self assert: result1 = result2.
	self assert: result2 = result3.
	self assert: result3 = result1.
	
	^ { t1 . t2 . t3 }