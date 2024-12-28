using System;
using System.Collections.Generic;
using System.Text;

namespace NhatVatTu.ViewModel
{
   public class HistoryCheckMaterialVM
    {
        public string MaterialCode { get; set; }
        public string MaterialName { get; set; }
        public string MaterialLocation { get; set; }
        public int ReasonID { get; set; }
        public int UserID { get; set; }
        public int RealQuantity { get; set; }
        public int TotalQuantity { get; set; }
        public DateTime DateTimePlan { get; set; }
        public string Lines { get; set; }
        public string Groups { get; set; }
    }
}
