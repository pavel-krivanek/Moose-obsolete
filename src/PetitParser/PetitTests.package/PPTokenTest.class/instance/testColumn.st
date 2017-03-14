testing-querying
testColumn
	| input parser result |
	input := '1' , (String with: (Character codePoint: 13)) , '12' , (String with: (Character codePoint: 13) with: (Character codePoint: 10)) , '123'
		, (String with: (Character codePoint: 10)) , '1234'.
	parser := #any asParser token star.
	result := parser parse: input.
	result with: #(1 2 1 2 3 4 1 2 3 4 1 2 3 4) do: [ :token :line | self assert: token column equals: line ]