using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WF001.Models;


namespace WF001.Provision
{
    public partial class Nuevo : System.Web.UI.Page
    {
        public string lang;
        public Language idioma = new Language();
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Context.User.Identity.Name;

            lang = "EN";
            string json = File.ReadAllText(Server.MapPath("~\\lang\\" + lang + ".json"));
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(json));
            DataContractJsonSerializer ser = new DataContractJsonSerializer(idioma.GetType());
            idioma = ser.ReadObject(ms) as Language;
            ms.Close();
        }
    }
}