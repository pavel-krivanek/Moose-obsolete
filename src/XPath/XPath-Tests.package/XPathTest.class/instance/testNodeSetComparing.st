tests
testNodeSetComparing
	self assert:
		('<list>
			<a>1</a><a>2</a><a>3</a>
			<b>0</b>
			<c>4</c>
		</list>' parseXML xPath:
			'list/a < list/a
				and list/a <= list/a
				and list/a > list/a
				and list/a >= list/a
				and list/b < list/a
				and list/b <= list/a
				and not(list/b > list/a)
				and not(list/b >= list/a)
				and not(list/c < list/a)
				and not(list/c <= list/a)
				and list/c > list/a
				and list/c >= list/a')