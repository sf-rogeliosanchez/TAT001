﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IEntities;
using IPersistence;
using System.Configuration;

namespace IBusiness
{
    public class USUARIO_BLL
    {
        //public static int INSERT(List<ZEBAN_S_BE> requisiciones)
        //{
        //    return AbstractDataAccesLayerHelper.GetDataAccessLayer().ZEBAN_S_INSERT(requisiciones);
        //}
        public static USUARIO_BE GET(string id)
        {
            return AbstractDataAccesLayerHelper.GetDataAccessLayer().USUARIO_GET(id);
        }
        //public static List<ZEBAN_S_BE> GET(int banfn, string bnfpo)
        //{
        //    return AbstractDataAccesLayerHelper.GetDataAccessLayer().ZEBAN_S_GET(banfn,bnfpo);
        //}
        //public static int UPDATE(List<ZEBAN_S_BE> requisiciones)
        //{
        //    return AbstractDataAccesLayerHelper.GetDataAccessLayer().ZEBAN_S_UPDATE(requisiciones);
        //}
        //public static int DELETE(List<ZEBAN_S_BE> requisiciones)
        //{
        //    return AbstractDataAccesLayerHelper.GetDataAccessLayer().ZEBAN_S_DELETE(requisiciones);
        //}
    }
}
