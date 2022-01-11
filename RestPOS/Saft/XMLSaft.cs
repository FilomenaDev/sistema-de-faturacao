using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Threading.Tasks;

namespace RestPOS.Saft
{
  public static  class XMLSaft
    {

      public  static void CreateXMLFile()
        {
            XmlDocument doc = new XmlDocument();
            XmlNode root = doc.SelectSingleNode("AuditFile");
            XmlElement header = doc.CreateElement("Header");
          // root.AppendChild(header);
           doc.Save(@"C:\RestoPOS_Source_codeUPS_2\RestPOS\Saft\saft.xml");
            Console.WriteLine(doc.InnerXml);
        }

    }
}
