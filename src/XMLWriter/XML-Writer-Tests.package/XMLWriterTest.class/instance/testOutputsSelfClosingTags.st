tests
testOutputsSelfClosingTags
	| writer |

	(writer := XMLWriter new)
		tag: 'tags' with: [
			writer
				tag: 'self-closing' with: nil;
				outputsSelfClosingTags: false;
				tag: 'not-self-closing' with: nil;
				outputsSelfClosingTags: true;
				tag: 'self-closing' with: nil].

	self assert:
		writer printString =
			'<tags><self-closing /><not-self-closing></not-self-closing><self-closing /></tags>'.