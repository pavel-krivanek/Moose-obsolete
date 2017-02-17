tests
testNodeSetEquality
	self assert:
		('<list>
			<a>one</a><a>two</a><a>three</a>
			<b>four</b>
		</list>' parseXML xPath:
			'list/a = list/a
				and list/a != list/a
				and not(list/b = list/a)
				and list/b != list/a
				and not(list/absent = list/a)
				and not(list/absent = list/absent)
				and not(list/absent != list/a)
				and not(list/absent != list/absent)')