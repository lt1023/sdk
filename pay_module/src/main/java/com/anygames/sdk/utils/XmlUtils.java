package com.anygames.sdk.utils;

import android.os.Environment;
import android.util.Log;
import android.util.Xml;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlSerializer;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;


public class XmlUtils {

    private static DocumentBuilder builder = null;
    private static Document doc = null;
    private static Transformer trans = null;

    /**
     * 获取XML DOM元素
     *
     * @param is string
     */

    public Document getDomElement(InputStream is) {

        Document doc = null;

        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {

            DocumentBuilder db = dbf.newDocumentBuilder();

// InputSource is = new InputSource();

// is.setCharacterStream(new StringReader(xml));

            doc = db.parse(is);

        } catch (ParserConfigurationException e) {

            Log.e("Error: ", e.getMessage());

            return null;

        } catch (SAXException e) {

            Log.e("Error: ", e.getMessage());

            return null;

        } catch (IOException e) {

            Log.e("Error: ", e.getMessage());

            return null;

        }

        return doc;

    }

    public Document getDomDocumentUpdate(String xml) {

        Document doc = null;

        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {

            DocumentBuilder db = dbf.newDocumentBuilder();

            InputSource is = new InputSource();

            is.setCharacterStream(new StringReader(xml));

            doc = db.parse(is);

        } catch (ParserConfigurationException e) {

            Log.e("Error: ", e.getMessage());

            return null;

        } catch (SAXException e) {

            Log.e("Error: ", e.getMessage());

            return null;

        } catch (IOException e) {

            Log.e("Error: ", e.getMessage());

            return null;

        }

        return doc;

    }

    /**
     * 获取节点值
     *
     * @param elem element
     */

    public final String getElementValue(Node elem) {

        Node child;

        if (elem != null) {

            if (elem.hasChildNodes()) {

                for (child = elem.getFirstChild(); child != null; child = child

                        .getNextSibling()) {

                    if (child.getNodeType() == Node.TEXT_NODE) {

                        return child.getNodeValue();

                    }

                }

            }

        }

        return "";

    }

    /**
     * 获取节点值
     *
     * @param item node
     * @param str  string
     */

    public String getValue(Element item, String str) {

        NodeList n = item.getElementsByTagName(str);

        return this.getElementValue(n.item(0));

    }

//XML文件有更新后，调用此方法

    public void output(Document node, String filename) {

        TransformerFactory transFactory = TransformerFactory.newInstance();

        try {

            Transformer transformer = transFactory.newTransformer();

// 设置各种输出属性

            transformer.setOutputProperty("encoding", "UTF-8");

            transformer.setOutputProperty("indent", "yes");

            DOMSource source = new DOMSource(node);

// 将待转换输出节点赋值给DOM源模型的持有者(holder)

// /source.setNode(node);

            StreamResult result = new StreamResult();

            if (filename == null) {

// 设置标准输出流为transformer的底层输出目标

                result.setOutputStream(System.out);

            } else {

                result.setOutputStream(new FileOutputStream(filename));

            }

// 执行转换从源模型到控制台输出流

            transformer.transform(source, result);

        } catch (TransformerConfigurationException e) {

            e.printStackTrace();

        } catch (TransformerException e) {

            e.printStackTrace();

        } catch (FileNotFoundException e) {

            e.printStackTrace();

        }

    }

    public String writeXml() {

        XmlSerializer xml = Xml.newSerializer();

        StringWriter writer = new StringWriter();

        try {

            xml.setOutput(writer);

            xml.startDocument("UTF-8", true);

            xml.startTag("", "blog");

            xml.startTag("", "message");

            xml.attribute("", "name", "xia");

            xml.startTag("", "age");

            xml.text("22");

            xml.endTag("", "age");

            xml.startTag("", "hobby");

            xml.text("play");

            xml.endTag("", "hobby");

            xml.startTag("", "hight");

            xml.text("165");

            xml.endTag("", "hight");

            xml.endTag("", "message");

            xml.startTag("", "message");

            xml.attribute("", "name", "chen");

            xml.startTag("", "age");

            xml.text("21");

            xml.endTag("", "age");

            xml.startTag("", "hobby");

            xml.text("swin");

            xml.endTag("", "hobby");

            xml.startTag("", "hight");

            xml.text("170");

            xml.endTag("", "hight");

            xml.endTag("", "message");

            xml.endTag("", "blog");

            xml.endDocument();

        } catch (Exception e) {

            throw new RuntimeException(e);

        }

        return writer.toString();

    }

    public boolean Write(String Filepath, String txt) {

        FileOutputStream fos = null;

        if (Environment.getExternalStorageState() != null) {// 这个方法在试探终端是否有sdcard!

            File path = new File("sdcard/test");// 创建目录

            File f = new File(Filepath);// 创建文件

            if (!path.exists()) {// 目录不存在返回false

                path.mkdirs();// 创建一个目录

            }

            if (!f.exists()) {// 文件不存在返回false

                try {

                    f.createNewFile();

                    fos = new FileOutputStream(f);

                    fos.write((txt).getBytes("UTF-8"));

                    fos.close();

                } catch (IOException e) {

// TODO Auto-generated catch block

                    e.printStackTrace();

                }// 创建一个文件

            }

        }

        return true;

    }

    private static XmlUtils uniqueInstance = null;

    public static XmlUtils getInstance() {
        if (uniqueInstance == null) {
            uniqueInstance = new XmlUtils();
        }
        return uniqueInstance;

    }


}
