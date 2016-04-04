package pitt.libhigh.utils;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;
import pitt.libhigh.bean.Group;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;

/**
 * Forked form liaokaien
 * Modified by Xynoci.
 */
public class XmlUtils {

    public String buildGroupXML(UUID userId, ArrayList<Group> subscription) {
        String xmlDoc = "";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
        try {
            DocumentBuilderFactory df = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = df.newDocumentBuilder();
            Document doc = db.newDocument();
            Element rootElement = doc.createElement("subscription");
            this.addAttribute(doc, rootElement, "xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
            if (userId != null) {
                this.addAttribute(doc, rootElement, "createdBy", userId.toString());
            }
            doc.appendChild(rootElement);

            subscription.forEach(group -> {
                Element groupNode = doc.createElement("group");
                addChildElement(doc, groupNode, "groupId", group.getGroupId().toString());
                addChildElement(doc, groupNode, "createdBy", group.getCreatedBy().toString());
                addChildElement(doc, groupNode, "groupName", group.getGroupName());
                if (!group.getLatestPost().equals("")) {
                    addChildElement(doc, groupNode, "latestPost", group.getLatestPost());
                }
                addChildElement(doc, groupNode, "hasBgImg", group.isHasBgImg() ? "true" : "false");
                String time = sdf.format(group.getCreatedAt());
                addChildElement(doc, groupNode, "createdAtString", time.substring(0,22)+":"+time.substring(22));
                addChildElement(doc, groupNode, "status", String.valueOf(group.getStatus()));
                addChildElement(doc, groupNode, "memberCount", String.valueOf(group.getMemberCount()));

                rootElement.appendChild(groupNode);
            });

            try {
                TransformerFactory tf = TransformerFactory.newInstance();
                Transformer transformer = tf.newTransformer();
                StringWriter writer = new StringWriter();
                transformer.transform(new DOMSource(doc), new StreamResult(writer));
                xmlDoc = writer.getBuffer().toString().replaceAll("\n|\r", "");
                xmlDoc = writer.getBuffer().toString();
            } catch (TransformerException e) {
                e.printStackTrace();
            }
        } catch (ParserConfigurationException pce) {
            pce.printStackTrace();
        }
        try {
            this.validate(xmlDoc, "src/main/Java/pitt/libhigh/utils/subscription.xsd");
        } catch (SAXException e) {
            e.printStackTrace();
        }
        return xmlDoc;
    }

    private void addAttribute(Document doc, Element targetElement, String attrName, String attrValue) {
        Attr attr = doc.createAttribute(attrName);
        attr.setValue(attrValue);
        targetElement.setAttributeNode(attr);
    }

    private void addChildElement(Document doc, Element targetElement, String tagName, String tagValue) {
        Element tag = doc.createElement(tagName);
        tag.appendChild(doc.createTextNode(tagValue));
        targetElement.appendChild(tag);
    }

    private boolean validate(String xmlDoc, String schemaPath) throws SAXException {

        SchemaFactory schemaFactory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
        Source schemaFile = new StreamSource(new File(schemaPath));
        Source xmlFile = new StreamSource(new StringReader(xmlDoc));
        Schema schema = schemaFactory.newSchema(schemaFile);
        Validator validator = schema.newValidator();

        try {
            validator.validate(xmlFile);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }

    }

}
