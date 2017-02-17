heuristics
pushSendOf: selector to: rec args: args
	"Needs to be optimized"

	| index recValue |
	rec == #self
		ifTrue:
			[
			(index := instVars indexOf: selector) > 0 ifTrue: [^index - 1].
			(selector last == $:
				and:
					[(index := instVars
						indexOf:
							(selector
								copyFrom: 1
								to: selector size - 1)) > 0])
				ifTrue:
					[self 
						handleAssignment: args first
						for: index - 1.
					^#result->selector].
			].
	(#(#= #== #< #> #<= #>= #~= #notNil #xor:) includes: selector) ifTrue: [^Boolean].
	"('is*' match: selector ) replaced for performance"
	((selector at: 1 ifAbsent: [$j] ) = $i and: [(selector at: 2 ifAbsent: [$j] ) = $s and: [(selector at: 3 ifAbsent: [$n]) isLowercase not]]) ifTrue: [^Boolean].
	(rec isVariableBinding
		and:
			[(recValue := rec value) isBehavior
				and:
					[(recValue class categoryForSelector: selector) == #'instance creation']])
		ifTrue:
			[^Association
				key: #instcreation
				value: recValue].
	^self
		langueSpecificPushSendOf: selector
		to: rec
		args: args