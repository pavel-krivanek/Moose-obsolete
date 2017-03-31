tests
testProcessingInstructionEntityReplacement
	| document doctypeDeclaration root |

	document :=
		XMLDOMParser parse:
			'<?xml version="1.1" standalone="yes"?>
			<!DOCTYPE root [
				<!ENTITY % first "<?firstTarget first>Data?>">
				%first;
				<!ENTITY second "<?secondTarget second?Data?>">
			]><root>&second;</root> '.

	self
		assert: document version = 1.1;
		assert: document hasDoctypeDeclaration;
		assert: document nodes size = 1.

	doctypeDeclaration := document doctypeDeclaration.
	self
		assert: doctypeDeclaration nodes size = 3;
		assert: doctypeDeclaration nodes second isPI;
		assert: doctypeDeclaration nodes second target = 'firstTarget';
		assert: doctypeDeclaration nodes second data = 'first>Data'.

	root := document root.
	self
		assert: root nodes size = 1;
		assert: root firstNode isPI;
		assert: root firstNode target = 'secondTarget';
		assert: root firstNode data = 'second?Data'.