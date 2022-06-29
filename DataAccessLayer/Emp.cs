using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace DataAccessLayer
{
    public class Emp
    {
        public int SaveEmp(Businessobject.Emp objboemp)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = " insert into empp values ('"+objboemp.Eid+ "','" + objboemp.Empname + "','" + objboemp.Designation+ "','" + objboemp.Salary + "','" + objboemp.Email + "','" + objboemp.Mobile + "','" + objboemp.Qualification + "','" + objboemp.Mid + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;

        }
        public DataSet GetData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = "select e.eid,e.empname as empname,e.designation,e.salary,e.email,e.mobile,e.qualification,m.empname as manager from empp e  left join empp m on e.mid=m.EID";

            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "empp");
            return ds;
        }
        public int UpdateEmp(Businessobject.Emp objbo)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = "update empp set empname='"+objbo.Empname+"',designation='"+objbo.Designation+"',salary='"+objbo.Salary+"',email='"+objbo.Email+"',mobile='"+objbo.Mobile+"',qualification='"+objbo.Qualification+"',mid='"+objbo.Mid+"' where eid='"+objbo.Eid+"'";
            SqlCommand cmd = new SqlCommand(q,con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;

        }
        public int DeleteEmp(Businessobject.Emp objbo)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = "delete from empp where eid='" + objbo.Eid + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
      

    }
}
