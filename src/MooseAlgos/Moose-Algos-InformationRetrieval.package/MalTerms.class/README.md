Terms subclasses Bag with support for handling stopwords etc.

example: string
	| terms |
	terms := Terms new.
	terms addString: string using: CamelCaseScanner new.
	terms withCoundDo: [ :term :count |
		term -> count ].

Copyright (c), 2004-2007 Adrian Kuhn. This class is part of Hapax. Hapax is distributed under BSD License, see package comment.