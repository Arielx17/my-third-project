using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web
{
    public class pubmodel
    {
        public int pb_id { get; set; }
        public string pb_author { get; set; }
        public string pb_title { get; set; }
        public string pb_detail { get; set; }
        public DateTime pb_time { get; set; }
        public int pb_days { get; set; }
    }
}