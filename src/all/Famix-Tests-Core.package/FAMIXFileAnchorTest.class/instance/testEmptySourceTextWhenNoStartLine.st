tests
testEmptySourceTextWhenNoStartLine
	| fileAnchor |
	fileAnchor := self anchorForClassTest
		startLine: nil;
		startColumn: nil;
		endLine: 19;
		endColumn: 3;
		yourself.
	self
		assert: fileAnchor sourceText
		equals:
			'package goosegame.dice;

import goosegame.Dice;

/**
 * Dice9 return 9 all the time. 
 */
public class Dice9 implements Dice {


	public Dice9() {
	}

	/* (non-Javadoc)
	 * @see goosegame.Dice#throwDice()
	 */
	public int throwDice() {
		return 9;
	}'