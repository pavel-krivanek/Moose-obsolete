tests
testElementMixedContent
	| xml mixedContent |

	xml := '<mixed-content> one <two/> <three/> four <five> </five> seven </mixed-content>'.
	mixedContent := (XMLDOMParser parse: xml) root.
	self
		assert: mixedContent nodes size = 7;
		assert: (mixedContent nodes first isStringNode: ' one ');
		assert: (mixedContent nodes second isElementNamed: 'two');
		deny: mixedContent nodes second hasChildren;
		assert: (mixedContent nodes third isStringNode: ' ');
		assert: (mixedContent nodes fourth isElementNamed: 'three');
		deny: mixedContent nodes fourth hasChildren;
		assert: (mixedContent nodes fifth isStringNode: ' four ');
		assert: (mixedContent nodes sixth isElementNamed: 'five');
		assert: mixedContent nodes sixth hasChildren;
		assert: mixedContent nodes sixth nodes size = 1;
		assert: (mixedContent nodes sixth nodes first isStringNode: ' ');
		assert: (mixedContent nodes seventh isStringNode: ' seven ').