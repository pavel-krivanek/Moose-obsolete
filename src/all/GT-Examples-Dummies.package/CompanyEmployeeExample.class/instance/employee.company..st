as yet unclassified
employee: employee company: company
	<gtExample>
	<dependsOnClass: #EmployeeExample selector: #e>
	<dependsOnClass: #CompanyExample selector: #c>
	
	self assert: e isNil.
	self assert: c isNil.
	
	e := employee.
	c := company.
	
	self assert: e == employee.
	self assert: c == company.
	
	c add: e.
	
	self assert: (c includes: e).
	
	^ c