using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Text;

namespace CSharpAssignment
{
    public partial class AddForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCriminal(object sender, EventArgs e)
        {
            //                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('username and password cannot be empty')", true);

            OnePushDSTableAdapters.WatchListTableAdapter x = new OnePushDSTableAdapters.WatchListTableAdapter();


            String id = Email1.Value;
            String nameEn = Password3.Value;
            String nameAr = Password2.Value;
            HttpPostedFile img = fileupload1.PostedFile;


            if (id == "" || nameEn == "" || nameAr == "" || img == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('please fill all the fields')", true);
                return;
            }

            String fileName = Path.GetFileName(img.FileName);
            String fileExtension = Path.GetExtension(fileName);

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = img.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                BitArray b = new BitArray(bytes);
                String bytesString = toBitString(b);

                String hash = MD5(bytesString);

                try
                {
                    x.InsertNewCriminal(id, nameEn, nameAr, hash);
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('duplicated ID')", true);
                    return;
                }

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('Criminal is inserted Successfully')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('the uploaded file is not of type image')", true);
                return;
            }
        }

        public String toBitString(BitArray bits)
        {
            var sb = new StringBuilder();

            for (int i = 0; i < bits.Count; i++)
            {
                char c = bits[i] ? '1' : '0';
                sb.Append(c);
            }

            return sb.ToString();
        }


        protected void addCamera(object sender, EventArgs e)
        {
            OnePushDSTableAdapters.CamerasTableAdapter x = new OnePushDSTableAdapters.CamerasTableAdapter();


            String id = exampleInputEmail1.Value;
            String locEn = Password1.Value;
            String locAr = exampleInputPassword1.Value;


            if (id == "" || locEn == "" || locAr == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('please fill all the fields')", true);
                return;
            }

            try
            {
                x.InsertNewCamera(id, locEn, locAr);
            }
            catch (Exception ex)
            {
                String msg = "duplicated ID";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('"+msg+"')", true);
                return;
            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('Camera is inserted Successfully')", true);

        }

        public String MD5(String a)
        {
            String key1 = "Mostafa";
            String key2 = "OnePush";
            String s = key1 + a + key2;
            using (var provider = System.Security.Cryptography.MD5.Create())
            {
                StringBuilder builder = new StringBuilder();

                foreach (byte b in provider.ComputeHash(Encoding.UTF8.GetBytes(s)))
                    builder.Append(b.ToString("x2").ToUpper());

                return builder.ToString();
            }
        }
    }
}