tests
testAttributeSorting
	| element |

	element :=
		self nodeClass
			name: 'sorted'
			attributes: (Array with: 'c' -> '3' with: 'b' -> '2' with: 'a' -> '1').
	self assert:
		(element attributeNodes sorted
			collect: [:each | each name]) asArray = #('a' 'b' 'c').
	self assert:
		((element attributeNodes sorted: [:a :b | a name <= b name])
			collect: [:each | each name]) asArray = #('a' 'b' 'c').
	"sorted/sorted: should sort copies"
	self assert: element attributeNames asArray = #('c' 'b' 'a').

	element attributeNodes sort.
	self assert: element attributeNames asArray = #('a' 'b' 'c').
	element attributeNodes sort: [:a :b | a name > b name].
	self assert: element attributeNames asArray = #('c' 'b' 'a').