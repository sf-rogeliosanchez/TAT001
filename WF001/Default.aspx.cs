using IEntities;
using IBusiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using WF001.Models;
using System.IO;
using System.Runtime.Serialization.Json;
using System.Text;

namespace WF001
{
    public partial class Default : System.Web.UI.Page
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

            btnLogout.Text = idioma.salir;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}