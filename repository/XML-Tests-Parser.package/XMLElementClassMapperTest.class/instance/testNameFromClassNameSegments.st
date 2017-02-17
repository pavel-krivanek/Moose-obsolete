tests
testNameFromClassNameSegments
	| mapper |

	mapper := self newMapper.
	#(#('ONE' 'Two' 'Three')
		#('One' 'Two' 'Three')
		#('A' 'Bc' 'D')
		#('Ab' 'Cd')
		#('Ab')
		#('AB')
		#('a' 'B')
		#('a' 'Ba'))
		with:
			#('ONETwoThree'
				'OneTwoThree'
				'ABcD'
				'AbCd'
				'Ab'
				'AB'
				'aB'
				'aBa')
		do: [:segments :name |
			self assert:
				(mapper nameFromClassNameSegments: segments) =
					name].