using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace TicTacToe
{
    class ArbolBusqueda
    {
        XmlDocument doc = new XmlDocument();
        public ArbolBusqueda()
        {
            doc.Load("juegos.xml");
        }
        public bool BuscarJuego(string Game)
        {
            string root = "/NNNNNNNNN";
            root += Game;
            
            XmlNode child = doc.SelectSingleNode(root);
            string juego;
            if (Game != "")
            {
                juego = Game.Substring(Game.Length - 9, 9);
            }
            else
            {
                return true;
            }
            
            if (child != null)
            {
                XmlNodeReader nr = new XmlNodeReader(child);
                while (nr.Read())
                {
                    if (nr.Name == juego)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                return false;
            }
            else
            {
                return false;
            }
        }
        public void AddChild(string Game)
        {
            string rootString = "/NNNNNNNNN";
            string elemString = "";
            rootString += Game.Substring(0, Game.Length - 10);
            XmlNode root = doc.SelectSingleNode(rootString);
            if(root != null)
            {
                elemString = Game.Substring(Game.Length - 9, 9);
                XmlElement elem = doc.CreateElement(elemString);
                root.AppendChild(elem);
            }
        }
        public void SaveChanges()
        {
            doc.Save("juegos.xml");
        }
        public void ReLoad()
        {
            doc.Load("juegos.xml");
        }
        public String[,] PlayIA(string Game)
        {
            string root = "/NNNNNNNNN";
            root += Game;
            String[,] Juego = new String[3, 3];
            XmlNode child = doc.SelectSingleNode(root);
            if (child != null)
            {
                try
                {
                    if (child.FirstChild.Name != null)
                    {
                        int x = 0;
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 3; j++)
                            {
                                if(child.FirstChild.Name.Substring(x, 1) == "N")
                                {
                                    Juego[i, j] = "";
                                }
                                else
                                {
                                    Juego[i, j] = child.FirstChild.Name.Substring(x, 1);
                                }
                                x++;
                            }
                        }
                        return Juego;
                    }
                    else
                    {
                        return null;
                    }
                }
                catch
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }
        //public void generarxml()
        //{
        //    XmlTextWriter EscribirRec = new XmlTextWriter("juegos.xml", Encoding.UTF8);

        //    EscribirRec.Formatting = Formatting.Indented;
        //    EscribirRec.Indentation = 2;
        //    EscribirRec.WriteStartDocument(false);

        //    EscribirRec.WriteStartElement("NNNNNNNNN");
        //    EscribirRec.WriteEndElement();

        //    EscribirRec.WriteEndDocument();
        //    EscribirRec.Close();

        //    XmlDocument doc = new XmlDocument();
        //    doc.Load("juegos.xml");
        //    XmlNode root = doc.DocumentElement;
        //    XmlElement elem = doc.CreateElement("XNNNNNNNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NXNNNNNNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNXNNNNNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNNXNNNNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNNNXNNNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNNNNXNNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNNNNNXNN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNNNNNNXN");
        //    root.AppendChild(elem);
        //    elem = doc.CreateElement("NNNNNNNNX");
        //    root.AppendChild(elem);
        //    doc.Save("juegos.xml");
        //}
    }
}
