accessing-xsd
mixedContentXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema targetNamespace="http://soapinterop.org/xsd"
        xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd1="http://soapinterop.org/xsd"
        xmlns:xsd2="http://soapinterop.org/xsd2"
        elementFormDefault="qualified">
     <element name="complexElt">
         <complexType mixed="true">
             <sequence>
                  <element name="name" type="string"/>
                  <element name="age" type="int"/>
             </sequence>
         </complexType>
     </element>
</schema>'