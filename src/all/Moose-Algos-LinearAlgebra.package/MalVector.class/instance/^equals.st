comparing
= vector
	
	^self == vector
		or:
			[(vector isKindOf: MalVector)
				and:
					[(vector hasSize: self size)
						and:
							[self
								with: vector
								do: [:a :b | a = b ifFalse: [^false]].
							true]]]