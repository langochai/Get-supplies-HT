using NhatVatTu.View;
using ScanBarcode;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.Text.Json;
using NhatVatTu.Models;
using NhatVatTu.ViewModel;

namespace NhatVatTu
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }
        private void ButtonLogin_Clicked(object sender, EventArgs e)
        {
        }
        private void btnExit_Clicked(object sender, EventArgs e)
        {
            System.Environment.Exit(0);
        }
        private void BtnKiemTra_Clicked(object sender, EventArgs e)
        {
            // Chuyển hướng đến trang KiemTraPage
            Application.Current.MainPage = new KiemTraPage();
        }
        private void btnXemLichSu_Clicked(object sender, EventArgs e)
        {
            // Chuyển hướng đến trang HistoryPage
            Application.Current.MainPage = new HistoryPage();
        }
        private async void btnDangNhap_Clicked(object sender, EventArgs e)
        {
            try
            {
                string url = Host.address1 + "Login";
                //++++++++++Added client handler here ++++++++++
                HttpClientHandler clientHandler = new HttpClientHandler
                {
                    ServerCertificateCustomValidationCallback = (sender1, cert, chain, sslPolicyErrors) => { return true; }
                };
                HttpClient Client = new HttpClient(clientHandler);
                // http://MainHost/api/UserCredentials/username=foo/password=foo. The api value and response value should match in order to return a true status code. 

                var obj = new UsersInfo() { Sbd = txtSbd.Text, Password = txtPassword.Text };

                var response = await Client.PostAsync(url, new StringContent(Newtonsoft.Json.JsonConvert.SerializeObject(obj), Encoding.UTF8, "application/json"));

                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var model = Newtonsoft.Json.JsonConvert.DeserializeObject<ResponseViewModel>(content);
                    // Gán tên người đăng nhập là người dùng
                    globalvariable.Nguoidung = txtSbd.Text;
                    globalvariable.UserID = model.userid;
                    //await DisplayAlert("Login success", "You are login", "Okay", "Cancel");
                    await Navigation.PushModalAsync(new KiemTraPage());
                }
                else
                {
                    await DisplayAlert("Login failed", "Tên đăng nhập hoặc mật khẩu không chính xác", "Ok");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Lỗi rồi..", ex.Message, "Đóng");
            }
        }

        private void txtSbd_Completed(object sender, EventArgs e)
        {
            txtPassword.Focus();
        }
    }
}
