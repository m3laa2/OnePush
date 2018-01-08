using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Text;
using System.IO;

namespace CSharpAssignment
{
    public partial class CompareForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void compareBtnClick(object sender, EventArgs e)
        {
            OnePushDSTableAdapters.CamerasTableAdapter x = new OnePushDSTableAdapters.CamerasTableAdapter();
            OnePushDSTableAdapters.WatchListTableAdapter y = new OnePushDSTableAdapters.WatchListTableAdapter();

            String cameraID = exampleInputEmail1.Value;

            HttpPostedFile img = fileupload1.PostedFile;

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

                String criminalData = "Criminal : <br>";
                String cameraData = "Camera : <br>";

                try
                {
                    DataTable data = y.GetCriminalByPhoto(hash);

                    if (data.Rows.Count > 0)
                    {
                        DataRow row1 = data.Rows[0];
                        String Criminalid = Convert.ToString(row1[data.Columns.IndexOf("id")]);
                        String CriminalNameEn = Convert.ToString(row1[data.Columns.IndexOf("NameEn")]);
                        String CriminalNameAr = Convert.ToString(row1[data.Columns.IndexOf("NameAr")]);
                        criminalData += "ID = " + Criminalid + "<br>";
                        criminalData += "NameEn = " + CriminalNameEn + "<br>";
                        criminalData += "NameAr = " + CriminalNameAr + "<br>";

                        try
                        {
                            DataTable data2 = x.GetCameraByID(cameraID);

                            if (data2.Rows.Count > 0)
                            {
                                DataRow row2 = data2.Rows[0];
                                String CameraLocationEn = Convert.ToString(row2[data2.Columns.IndexOf("LocationEn")]);
                                String CameraLocationAr = Convert.ToString(row2[data2.Columns.IndexOf("LocationAr")]);

                                cameraData += "Location En = " + CameraLocationEn + "<br>";
                                cameraData += "Location Ar = " + CameraLocationAr + "<br>";

                            }
                            else
                            {
                                cameraData += "Not Found" + "<br>";
                            }

                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    else
                    {
                        criminalData += "Not Found" + "<br>";
                    }

                    // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('" + criminalData + cameraData + "')", true);
                    result.Text = criminalData + cameraData;

                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Empty Fields", "alert('" + ex.Message + "')", true);
                    return;
                }

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