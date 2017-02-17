This is a utility class for creating a highlighted text. For this we need:
- a parser: PPParser
- an attributeMapper

Here is a template to use it:

PPTextHighlighter new
	parser: YourParser new;
	color: 'tokenName1' with: Color blue;
	color: 'tokenName2' with: Color gray;
	highlight: string.