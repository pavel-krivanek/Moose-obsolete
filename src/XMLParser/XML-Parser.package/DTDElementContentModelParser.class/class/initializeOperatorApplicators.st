class initialization
initializeOperatorApplicators
	"use an array instead of a dictionary for speed, and
	assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	OperatorApplicators :=
		(Array new: 255)
			at: $, asciiValue put: #applyConcatenation;
			at: $| asciiValue put: #applyBranch;
			at: $? asciiValue put: #applyOptional;
			at: $* asciiValue put: #applyStar;
			at: $+ asciiValue put: #applyPlus;
			yourself