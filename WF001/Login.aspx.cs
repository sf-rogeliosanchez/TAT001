using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WF001.Models;

namespace WF001
{
    public partial class Login : System.Web.UI.Page
    {
        public string lang;
        public Language idioma = new Language();
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.Form["user_name"];
            string pass = Request.Form["user_pass"];

            lang = "ES";
            string json = File.ReadAllText(Server.MapPath("\\lang\\" + lang + ".json"));
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(json));
            DataContractJsonSerializer ser = new DataContractJsonSerializer(idioma.GetType());
            idioma = ser.ReadObject(ms) as Language;
            ms.Close();

            try
            {
                if (!user.Equals(null) && !pass.Equals(null))
                {
                    if (existeUsuario(user, pass))
                    {
                        FormsAuthentication.RedirectFromLoginPage(user, true);
                    }
                    else
                    {
                        lblError.Text = idioma.user_error;
                    }
                }

            }
            catch
            {
                lblError.Text = "";
            }
        }

        public bool existeUsuario(string u, string p)
        {
            if (u.Equals("admin"))
                if (p.Equals("admin"))
                    return true;
            return false;
        }
    }
}