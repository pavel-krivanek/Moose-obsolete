tests
testParsingQueryString
	#('' '?' '?&' '?&&') do: [:each |
		self assert:
			each asXMLURI query =
				OrderedCollection new].

	#('?a=b' '?&a=b&' '?&&a=b&&') do: [:each |
		self assert:
			each asXMLURI query =
				(OrderedCollection with: 'a' -> 'b')].

	#('?=&a=b' '?&=&a=b' '?&&=&&a=b') do: [:each |
		self assert:
			each asXMLURI query =
				(OrderedCollection
					with: '' -> ''
					with: 'a' -> 'b')].

	#('?a=b&=' '?a=b&=&' '?a=b&&=&&') do: [:each |
		self assert:
			each asXMLURI query =
				(OrderedCollection
					with: 'a' -> 'b'
					with: '' -> '')].

	#('?c=&a=b' '?&c=&a=b' '?&&c=&&a=b') do: [:each |
		self assert:
			each asXMLURI query =
				(OrderedCollection
					with: 'c' -> ''
					with: 'a' -> 'b')].

	#('?a=b&c=' '?a=b&c=&' '?a=b&&c=&&') do: [:each |
		self assert:
			each asXMLURI query =
				(OrderedCollection
					with: 'a' -> 'b'
					with: 'c' -> '')].