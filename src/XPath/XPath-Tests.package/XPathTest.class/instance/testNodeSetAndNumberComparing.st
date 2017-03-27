tests
testNodeSetAndNumberComparing
	self assert:
		('<list><a>1</a><a>2</a></list>' parseXML xpath:
			'list/a < 2
				and list/a <= 1
				and list/a > 1
				and list/a >= 2
				and 1 < list/a
				and 2 <= list/a
				and 2 > list/a
				and 2 >= list/a
				and not(list/a < 1)
				and not(list/a <= 0)
				and not(list/a > 3)
				and not(list/a >= 3)
				and not(3 < list/a)
				and not(3 <= list/a)
				and not(0 > list/a)
				and not(0 >= list/a)')