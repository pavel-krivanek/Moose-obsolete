testing-querying
testLine
	| input parser result |
	input := '1' , (String with: (Character codePoint: 13)) , '12' , (String with: (Character codePoint: 13) with: (Character codePoint: 10)) , '123'
		, (String with: (Character codePoint: 10)) , '1234'.
	parser := #any asParser token star.
	result := parser parse: input.
	result with: #(1 1 2 2 2 2 3 3 3 3 4 4 4 4) do: [ :token :line | self assert: token line equals: line ]