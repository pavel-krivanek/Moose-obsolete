as yet unclassified
doMore2: company employee: employee
	<gtExample>
	<dependsOn: #doMore1:>
	<dependsOnClass: #EmployeeExample selector: #e>
	
	self assert: company size = 3.
	self assert: company == c.
	self assert: company second == e.
	self assert: (e == employee) not.
	self assert: (e includes: employee) not.
	
	e2 := employee.
	
	^ company