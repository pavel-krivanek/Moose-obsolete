accessing
defaultBlock: aBlock
	
	"this method enable to compute the default text by computing the value of a block. Using a block is usefull, for example, to specify required value in its contents. Since this block will only be evaluated when this part will retrieve its required inputs, all will works well"
	defaultBlock := aBlock.