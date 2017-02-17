tests
testUnderscoredNameFromClassNameSegments
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
			#('one_two_three'
				'one_two_three'
				'a_bc_d'
				'ab_cd'
				'ab'
				'ab'
				'a_b'
				'a_ba')
		do: [:segments :name |
			self assert:
				(mapper underscoredNameFromClassNameSegments: segments) =
					name].