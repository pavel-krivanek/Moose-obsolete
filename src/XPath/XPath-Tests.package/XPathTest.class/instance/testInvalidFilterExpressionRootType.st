tests
testInvalidFilterExpressionRootType
	#('1[1]' '"string"[position()=1]' 'true()[true()]'
		'(1)[1]' '("string")[position()=1]' '(true())[true()]'
		'1/addressbook' '"string"/addressbook' 'true()/addressbook'
		'(1)/addressbook' '("string")/addressbook' '(true())/addressbook')
		do: [:each |
			self
				should: [document xPath: each]
				raise: XPathTypeException]