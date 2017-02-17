as yet unclassified
doMore3: company1 company: company2 employee: employee
	<gtExample>
	<dependsOn: #doMore2:employee:>
	<dependsOnClass: #CompanyExample selector: #c>
	<dependsOnClass: #EmployeeExample selector: #e>
	
	self assert: company1 == c.
	self assert: (company2 == c) not.
	self assert: (company1 == company2) not.
	self assert: (employee == e) not.
	self assert: (employee == e2) not.
	self assert: (c includes: employee) not.