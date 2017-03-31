tests
testElementUnterminatedStartTag
	#('<'
		'<></>'
		'</>'
		'<test'
		'<test</test>'
		'<test/'
		'<test name'
		'<test name></test>'
		'<test name/>'
		'<test name='
		'<test name=></test>'
		'<test name=/>'
		'<test name="'
		'<test name="></test>'
		'<test name="/>'
		'<test name="value'
		'<test name="value"'
		'<test name="value"</test>'
		'<test name="value"/'
		'<test name='''
		'<test name=''></test>'
		'<test name=''/>'
		'<test name=''value'
		'<test name=''value'''
		'<test name=''value''</test>'
		'<test name=''value''/'
		'<test name="value''></test>'
		'<test name=''value"></test>'
		'<test name="value''/>'
		'<test name=''value"/>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]