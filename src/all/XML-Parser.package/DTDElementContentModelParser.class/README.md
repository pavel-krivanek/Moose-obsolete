This class parses element content models. It uses postfix conversion and an XMLNFABuilder to build an NFA before converting it to a lazy DFA (states are built when needed and cached) and returns it as an XMLElementValidator.

It assumes all spaces have been removed from the input and that it's been checked for well-formedness, meaning no missing names or misplaced operators/parentheses.