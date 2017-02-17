building
metamodelsOn: a
	^ (a list)
		title: 'Meta-models';
		display: [ :folder | (folder entries select: [ :file | '*.mse' match: file basename ]) collect: #reference ];
		format: #basename