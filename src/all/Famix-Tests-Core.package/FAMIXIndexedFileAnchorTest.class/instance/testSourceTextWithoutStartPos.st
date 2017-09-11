tests
testSourceTextWithoutStartPos
	| anchor |
	anchor := self anchorForClassTest
		startPos: nil;
		endPos: 250;
		yourself.
	anchor stub completeText willReturn: self sourceCodeForTest.
	self
		assert: anchor sourceText
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