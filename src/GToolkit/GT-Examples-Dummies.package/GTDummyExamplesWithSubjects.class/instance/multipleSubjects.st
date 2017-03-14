examples
multipleSubjects
	<gtExample>
	<subjectClass: 'GTExample' selector: #methodClass>
	<subjectClass: #GTExample selector: #selector>
	<subjectClass: 'GTExample class' selector: #selector> " does not exist "
	<subjectClass: #GTExample selector: #run>
	<subjectHelp: 'GT Inspector'>
	<subjectClass: 'GTExample'>
	<subjectText: 'Justo Malesuada Bibendum Adipiscing Elit'>
	<subjectText: 'Donec sed odio dui'>
	<subjectKeywords: #( 'Donec' 'sed' 'odio' 'dui' )>
	<subjectKeyword: 'Malesuada'>
	
	self assert: self gtExampleContext example subjects size = 13.
	self assert: (self gtExampleContext example subjects select: [ :each | each exists ]) size = 12.
	
	^ 0