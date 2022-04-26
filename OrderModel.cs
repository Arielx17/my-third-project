using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web
{
    public class OrderModel
    {
        public int orderId { get; set; }
        public string userName { get; set; }
        public string userPhone { get; set; }
        public string userAddress { get; set; }
        public string orderGoods { get; set; }
    }
}