tests
testNodeSetAndNonNodeSetEquality
	self assert:
		('<list><a>1</a><a>two</a></list>' parseXML xpath:
			'list/a = 1.0
				and 1.0 = list/a
				and not(list/a = 2.0)
				and not(2.0 = list/a)
				and list/a = "two"
				and "two" = list/a
				and not(list/a = "one")
				and not("one" = list/a)
				and list/a = true()
				and true() = list/a
				and not(list/absent = true())
				and not(true() = list/absent)')