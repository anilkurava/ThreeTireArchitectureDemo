using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;

namespace BusinessLayer
{
    public class Emp
    {
        DataAccessLayer.Emp objdalemp = new DataAccessLayer.Emp();
        public int SaveEmp(Businessobject.Emp objboemp)
        {
            int i = objdalemp.SaveEmp(objboemp);
            return i;
        }
        public DataSet GetData()
        {
            DataSet ds = objdalemp.GetData();
            return ds;
        }
        public int UpdateEmp(Businessobject.Emp objbo)
        {
            int i = objdalemp.UpdateEmp(objbo);
            return i;
        }
        public int DeleteEmp(Businessobject.Emp objbo)
        {
            int i = objdalemp.DeleteEmp(objbo);
            return i;
        }
     
    }
}
