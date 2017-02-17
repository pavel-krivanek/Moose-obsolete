examples-failing
h: aBoolean
	<gtExample>
	<label: 'Dummy #h, depends: #e:'>
	<description: 'shouldnt raise any exception, but dependency should'>
	<dependsOn: #e:>
	<noTest>
	
	^ aBoolean & false