using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web
{
    public class GoodsModel
    {
        public int GId { get; set; }
        public string GName { get; set; }
        public float GPrice { get; set; }
        public int GStock { get; set; }
        public string GInfo { get; set; }
        public string GImage { get; set; }
    }
}