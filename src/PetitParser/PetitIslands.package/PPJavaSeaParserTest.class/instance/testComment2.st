tests
testComment2
	| input  |
	input := '/**
     * <p> If the {@code name} is "{@code <init>};"or "{@code <clinit>}" a
     * @since JDK1.1
     */'.

	self parse: input rule: #comment