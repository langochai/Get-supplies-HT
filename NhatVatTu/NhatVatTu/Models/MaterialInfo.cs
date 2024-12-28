using System;
using System.Collections.Generic;
using System.Text;

namespace ScanBarcode.Models
{
    public class MaterialInfo
    {
        public long ID { get; set; }
        public string Line_c { get; set; }
        public string GroupID { get; set; }
        public string Receive_dt { get; set; }
        public string location_material { get; set; }
        public string materialCode { get; set; }
        public string materialName { get; set; }
        public string materialType { get; set; }
        public int qty { get; set; }
        public string Unit { get; set; }
    }
}
