using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Runtime.InteropServices;

namespace SeaWarsSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // Need to write the new dll directory to continue tests.
        [DllImport("Dll_Wars.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]
        public static extern IntPtr initController();
        // "C:/Users/Anton/source/repos/Dll_Wars/Debug/Dll_Wars.dll"
        [DllImport("Dll_Wars.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]
        public static extern int manageInput(StringBuilder dialogueBuffer, int length , IntPtr controller);

        StringBuilder stringB;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Це Морський бій, и я его таки докрутил.";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Session["contr"] = initController();
            Button1.Visible = false;
            Button2.Visible = true;
            TextBox1.Visible = true;
            Button2_Click(Button1, e);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            stringB = new StringBuilder(TextBox1.Text);

            // Normalisation.
            while (stringB.Length < 256)
                stringB.Append(' ');

            manageInput(stringB, stringB.Length, (IntPtr)Session["contr"]);

            Label1.Text = stringB.ToString();
            if (Label1.Text.Contains("Игра завершается"))
            {
                Button2.Visible = false;
                Button1.Visible = true;
            }
            stringB.Clear();
            TextBox1.Text = "";
        }
    }
}