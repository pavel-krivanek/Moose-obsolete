tests
testClassNameSegmentsFrom
	| mapper |

	mapper := self newMapper.
	#('ONETwoThree'
		'OneTwoThree'
		'ABcD'
		'AbCd'
		'Ab'
		'AB'
		'aB'
		'aBa')
		with:
			#(#('ONE' 'Two' 'Three')
				#('One' 'Two' 'Three')
				#('A' 'Bc' 'D')
				#('Ab' 'Cd')
				#('Ab')
				#('AB')
				#('a' 'B')
				#('a' 'Ba'))
		do: [:string :segments |
			self assert:
				(mapper classNameSegmentsFrom: string) =
					segments asOrderedCollection].