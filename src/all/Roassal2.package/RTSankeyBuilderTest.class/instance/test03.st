tests
test03
	"data and build"
	| b nodes links |
	b := RTSankeyBuilder new.
	
	nodes := OrderedCollection new
		add: 'A';
		add: 'B';
		yourself.
	links := OrderedCollection new
		add: 'A'->'B';
		yourself.
	b 
		iterations: 32;
		nodePadding: 5;
		nodes: nodes;
		links: links;
		linkFrom: #key;
		linkTo: #value;
		linkValue: 1;
		build.
	b view