PPSearchRule is a rule that simply searches for matches to the rule. Every time a match is found, answerBlock is evaluated with the parser that matches and the current answer. This two-argument approach allows a collection to be formed from all of the matches, like with #inject:into:.

Instance Variables:
	answerBlock	<BlockClosure>	Block to evaluate with the matching node and the current answer.
