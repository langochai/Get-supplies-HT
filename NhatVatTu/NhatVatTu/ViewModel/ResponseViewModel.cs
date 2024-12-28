using NhatVatTu.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace NhatVatTu.ViewModel
{
    public class ResponseViewModel
    {
        public int userid { get; set; }
        public string data { get; set; }
        public string[] materialName { get; set; }
        public string[] materialLocation { get; set; }
        public DateTime[] timePlan { get; set; }
        public string[] line { get; set; }
        public List<ReasonSkipsInfo> listData { get; set; }
        public List<GroupsInfo> listGroup { get; set; }
    }
}
