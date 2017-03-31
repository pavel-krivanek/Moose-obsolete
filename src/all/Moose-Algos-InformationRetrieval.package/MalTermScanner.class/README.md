TermScanner breaks an input stream into tokens. 

example: stream
	| scanner |
	scanner := TermScanner new.
	scanner onStream: stream.
	[ scanner atEnd ] 
		whileFalse: 
			[ scanner next ]		

Copyright (c), 2004-2007 Adrian Kuhn. This class is part of Hapax. Hapax is distributed under BSD License, see package comment.