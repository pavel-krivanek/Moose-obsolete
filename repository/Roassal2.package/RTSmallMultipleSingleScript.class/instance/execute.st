hooks
execute
	<script: 'RTSmallMultipleSingleScript new execute'>
	dic := self loadData.
	self buildView.
	self buildMatrix.
	self buildMenu.
	self inspectView