tests
testCamelCasedNameFromClassNameSegments
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
			#('oneTwoThree'
				'oneTwoThree'
				'aBcD'
				'abCd'
				'ab'
				'ab'
				'aB'
				'aBa')
		do: [:segments :name |
			self assert:
				(mapper camelCasedNameFromClassNameSegments: segments) =
					name].