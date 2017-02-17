tests
testHyphenatedNameFromClassNameSegments
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
			#('one-two-three'
				'one-two-three'
				'a-bc-d'
				'ab-cd'
				'ab'
				'ab'
				'a-b'
				'a-ba')
		do: [:segments :name |
			self assert:
				(mapper hyphenatedNameFromClassNameSegments: segments) =
					name].