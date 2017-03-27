tests
testNodeSetAndNonNodeSetInequality
	self assert:
		('<list><a>1</a><b>two</b></list>' parseXML xpath:
			'list/a != 2.0
				and 2.0 != list/a
				and not(list/a != 1.0)
				and not(1.0 != list/a)
				and list/b != "one"
				and "one" != list/b
				and not(list/b != "two")
				and not("two" != list/b)
				and list/a != false()
				and false() != list/a
				and list/absent != true()
				and true() != list/absent')