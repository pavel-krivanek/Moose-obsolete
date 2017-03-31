adding
addScript
	stream
		nextPutAll: '    <script><![CDATA[
		function init(evt){
			if(window.svgDocument == null){
				svgDocument = evt.target.ownerDocument;
			}
		}
		var popup = null;
		function showPopup(evt, id){
			if (popup != null)
				hidePopup(id);
			popup = svgDocument.getElementById(id);
			popup.setAttributeNS(null, "visibility", "visible");
		}
		function hidePopup(id){
			popup = svgDocument.getElementById(id);
			popup.setAttributeNS(null, "visibility", "hidden");
			popup = null;
		}
		 ]]></script>'