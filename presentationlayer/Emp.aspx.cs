using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace presentationlayer
{
    public partial class Emp : System.Web.UI.Page
    {
        BusinessLayer.Emp objbl = new BusinessLayer.Emp();
        Businessobject.Emp objbol = new Businessobject.Emp();
        private void FillData()
        {
            DataSet ds = objbl.GetData();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                FillData();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "SAVE")
            {
                objbol.Eid = TXTID.Text;
                objbol.Empname = TXTNAME.Text;
                objbol.Designation = DDESG.SelectedItem.Text;
                objbol.Salary = Convert.ToDouble(TXTSAL.Text);
                objbol.Email = TXTEMAIL.Text;
                objbol.Mobile = long.Parse(TXTMOBILE.Text);
                objbol.Qualification = DQUAL.SelectedItem.Text;
                objbol.Mid = TXTMANAGER.Text;

                int i = objbl.SaveEmp(objbol);
                if (i == 1)
                {
                    FillData();
                }
            }
            else if(Button1.Text=="UPDATE")
            {
                objbol.Eid = TXTID.Text;
                objbol.Empname = TXTNAME.Text;
                objbol.Designation = DDESG.SelectedItem.Text;
                objbol.Salary = Convert.ToDouble(TXTSAL.Text);
                objbol.Email = TXTEMAIL.Text;
                objbol.Mobile = long.Parse(TXTMOBILE.Text);
                objbol.Qualification = DQUAL.SelectedItem.Text;
                objbol.Mid = TXTMANAGER.Text;
                int i = objbl.UpdateEmp(objbol);
                if(i==1)
                {
                    TXTEMAIL.Text = " ";
                    TXTID.Text = " ";
                    TXTMANAGER.Text = " ";
                    TXTMOBILE.Text = " ";
                    TXTNAME.Text = " ";
                    TXTSAL.Text = " ";
                    DDESG.Text = "--SELECT--";
                    DQUAL.Text = "--SELECT--";
                    Button1.Text = "SAVE";
                }
                FillData();

            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            
            if (e.CommandName.ToString()=="cmdedit")
            {
                
                GridViewRow row = GridView1.Rows[index];
                Label eid = (Label)row.FindControl("Label1");
                Label ename = (Label)row.FindControl("Label2");
                Label desg = (Label)row.FindControl("Label3");
                Label sal = (Label)row.FindControl("Label4");
                Label email = (Label)row.FindControl("Label5");
                Label mob = (Label)row.FindControl("Label6");
                Label qual = (Label)row.FindControl("Label7");
                Label man = (Label)row.FindControl("Label8");
               
                TXTID.Text = eid.Text;
                TXTNAME.Text = ename.Text;
                DDESG.Text = desg.Text;
                TXTSAL.Text = sal.Text;
                TXTEMAIL.Text = email.Text;
                TXTMOBILE.Text = mob.Text;
                DQUAL.Text = qual.Text;
                TXTMANAGER.Text = man.Text;
                Button1.Text = "UPDATE";
                FillData();




            }
            else if(e.CommandName=="cmddelete")
            {
                GridViewRow row = GridView1.Rows[index];
                Label id = (Label)row.FindControl("Label1");
                objbol.Eid = id.Text;
                int i = objbl.DeleteEmp(objbol);
                if(i==1)
                {
                    FillData();
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TXTEMAIL.Text = " ";
            TXTID.Text = " ";
            TXTMANAGER.Text = " ";
            TXTMOBILE.Text = " ";
            TXTNAME.Text = " ";
            TXTSAL.Text = " ";
            DDESG.Text = "--SELECT--";
            DQUAL.Text = "--SELECT--";
            Button1.Text = "SAVE";
        }
    }
}