parsing
parse
	"the tokenizer removes all spaces from the content model and checks
	it for well-formedness (meaning no missing names or misplaced
	operators/parentheses), which simplifies parsing"
	| nameStart |

	binaryOperatorStack := OrderedCollection new.
	nfaBuilder := XMLNFABuilder new.
	1 to: contentModel size do: [:i |
		(self parserForSpecialCharacter: (contentModel at: i))
			ifNil: [
				nameStart
					ifNil: [nameStart := i]]
			ifNotNil: [:selector |
				nameStart
					ifNotNil: [
						nfaBuilder pushMatcher:
							(contentModel copyFrom: nameStart to: i - 1).
						nameStart := nil].
				self
					perform: selector
					with: (contentModel at: i)]].
	self popRemainingBinaryOperators.

	^ self elementValidatorClass
		element: element
		dfa: nfaBuilder buildAcceptingNFAFromFragments asDFAState.