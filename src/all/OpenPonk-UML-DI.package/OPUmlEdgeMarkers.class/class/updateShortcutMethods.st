meta
updateShortcutMethods
	<script>
	(self methodsInProtocol: 'markers') do: [ :each | self compileDelegatorFor: each ]