using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace NhatVatTu.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HistoryPage : ContentPage
    {
        public ObservableCollection<LichSuItem> LichSuItems { get; set; }
        public class LichSuItem
        {
            public string MaterialCode { get; set; }
            public string MaterialName { get; set; }
            public string MaterialType { get; set; }
            public string Location { get; set; }
            public string Worker { get; set; }
            public DateTime CheckTime { get; set; }
            public int PlannedQuantity { get; set; }
            public int ActualQuantity { get; set; }
        }

        public HistoryPage()
        {
            InitializeComponent();
            LichSuItems = new ObservableCollection<LichSuItem>();
            PopulateData(); // Hàm này sẽ thực hiện việc thêm dữ liệu mẫu vào danh sách LichSuItems
            listView.ItemsSource = LichSuItems;
        }
        private void BtnSearch_Clicked(object sender, EventArgs e)
        {
            // Thực hiện tìm kiếm dựa trên ngày từ và ngày đến
            // Bạn có thể thực hiện logic tìm kiếm dữ liệu ở đây và cập nhật LichSuItems

        }

        private void PopulateData()
        {
            // Hàm này thêm dữ liệu mẫu vào danh sách LichSuItems
            LichSuItems.Add(new LichSuItem { MaterialCode = "001", MaterialName = "Vật tư 1", MaterialType = "Loại 1", Location = "Vị trí 1", Worker="Mạnh", CheckTime = DateTime.Now, PlannedQuantity = 100, ActualQuantity = 100 });
            LichSuItems.Add(new LichSuItem { MaterialCode = "002", MaterialName = "Vật tư 2", MaterialType = "Loại 2", Location = "Vị trí 2", Worker = "Mạnh", CheckTime = DateTime.Now.AddDays(-1), PlannedQuantity = 150, ActualQuantity = 150 });
            LichSuItems.Add(new LichSuItem { MaterialCode = "003", MaterialName = "Vật tư 3", MaterialType = "Loại 3", Location = "Vị trí 3", Worker = "Mạnh",CheckTime = DateTime.Now.AddDays(-1), PlannedQuantity = 170, ActualQuantity = 170 });
            LichSuItems.Add(new LichSuItem { MaterialCode = "004", MaterialName = "Vật tư 4", MaterialType = "Loại 4", Location = "Vị trí 4", Worker = "Mạnh",CheckTime = DateTime.Now.AddDays(-1), PlannedQuantity = 190, ActualQuantity = 180 });
            //Thêm các dữ liệu khác tương tự
        }

    }
}