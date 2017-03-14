tests
testNodeSetAndBooleanComparing
	self assert:
		('<list><a>not-empty</a></list>' parseXML xPath:
			'list/b < true()
				and list/b <= true()
				and list/a > false()
				and list/a >= false()
				and false() < list/a
				and true() <= list/a
				and true() > list/b
				and false() >= list/b
				and not(list/b < false())
				and not(list/a <= false())
				and not(list/b > true())
				and not(list/b >= true())
				and not(true() < list/a)
				and not(true() <= list/b)
				and not(true() > list/a)
				and not(false() >= list/a)')