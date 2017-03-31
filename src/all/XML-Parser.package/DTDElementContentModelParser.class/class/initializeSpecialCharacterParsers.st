class initialization
initializeSpecialCharacterParsers
	"use an array instead of a dictionary for speed, and
	assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	SpecialCharacterParsers :=
		(Array new: 255)
			at: $( asciiValue put: #parseOpeningParenthesis:;
			at: $) asciiValue put: #parseClosingParenthesis:;
			at: $, asciiValue put: #parseBinaryOperator:;
			at: $| asciiValue put: #parseBinaryOperator:;
			at: $? asciiValue put: #parseUnaryOperator:;
			at: $* asciiValue put: #parseUnaryOperator:;
			at: $+ asciiValue put: #parseUnaryOperator:;
			yourself