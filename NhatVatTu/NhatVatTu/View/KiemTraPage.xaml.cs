using NhatVatTu.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace NhatVatTu.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class KiemTraPage : ContentPage
    {
        #region Khai báo biến
        string url = Host.address1;
        HttpClientHandler clientHandler = new HttpClientHandler
        {
            ServerCertificateCustomValidationCallback = (sender1, cert, chain, sslPolicyErrors) => { return true; }
        };
        int reasonID = 0;
        HttpClient Client;
        string _uri1 = string.Empty;
        string _uri2 = string.Empty;
        string _materialName = string.Empty;
        string _materialLocation = string.Empty;
        DateTime _datetimePlan = DateTime.Now;
        string _lines = string.Empty;
        #endregion

        public KiemTraPage()
        {
            Client = new HttpClient(clientHandler);
            InitializeComponent();
        }

        #region Hàm load dữ liệu khi đăng nhập
        protected override void OnAppearing()
        {
            base.OnAppearing();
            GetGroups();
            stackCheckBox.IsVisible = false;
            groups.SelectedItem = 1;
            txtMaterialCode.Focus();
        }
        #endregion

        #region Hàm lấy danh sách lý do
        private async void GetReason()
        {
            string uri = url + "reason";
            var response = await Client.GetAsync(uri);
            if (response.IsSuccessStatusCode)
            {
                try
                {
                    string content = await response.Content.ReadAsStringAsync();
                    var list = Newtonsoft.Json.JsonConvert.DeserializeObject<ResponseViewModel>(content);
                    StackLayout stackLayout = new StackLayout()
                    {
                        Margin = new Thickness(0, 0, 0, 0),
                    };

                    foreach (var item in list.listData)
                    {
                        StackLayout stack = new StackLayout()
                        {
                            Orientation = StackOrientation.Horizontal,
                        };
                        RadioButton radio = new RadioButton()
                        {
                            VerticalOptions = LayoutOptions.CenterAndExpand,
                            Margin = new Thickness(0, 0, 5, 0),
                            GroupName = "radioReason",
                            Value = item.ID,
                            IsChecked = true,
                        };
                        radio.CheckedChanged += (sender, e) =>
                        {
                            bool isChecked = e.Value;
                            reasonID = Convert.ToInt32(((RadioButton)sender).Value);
                        };
                        Label label = new Label()
                        {
                            Text = item.ReasonCode,
                            VerticalOptions = LayoutOptions.CenterAndExpand
                        };
                        stack.Children.Add(radio);
                        stack.Children.Add(label);
                        stackLayout.Children.Add(stack);
                    }
                    stackCheckBox.Children.Add(stackLayout);
                }
                catch (Exception ex)
                {
                }
            }
        }
        #endregion

        #region Hàm lấy danh sách nhóm
        private async void GetGroups()
        {
            string uri = url + "groups";
            var response = await Client.GetAsync(uri);
            if (response.IsSuccessStatusCode)
            {
                try
                {
                    string content = await response.Content.ReadAsStringAsync();
                    var list = Newtonsoft.Json.JsonConvert.DeserializeObject<ResponseViewModel>(content);
                    foreach (var item in list.listGroup)
                    {
                        groups.Items.Add(item.GroupName);
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        #endregion

        #region Hàm ngày giờ
        public class DateTimePicker2 : ContentView, INotifyPropertyChanged
        {
            public Entry _entry { get; private set; } = new Entry();
            public DatePicker _datePicker { get; private set; } = new DatePicker() { MinimumDate = DateTime.Today, IsVisible = false };
            public TimePicker _timePicker { get; private set; } = new TimePicker() { IsVisible = false };
            string _stringFormat { get; set; }
            public string StringFormat { get { return _stringFormat ?? "dd/MM/yyyy HH:mm"; } set { _stringFormat = value; } }
            public DateTime DateTime
            {
                get { return (DateTime)GetValue(DateTimeProperty); }
                set { SetValue(DateTimeProperty, value); OnPropertyChanged("DateTime"); }
            }

            private TimeSpan _time
            {
                get
                {
                    return TimeSpan.FromTicks(DateTime.Ticks);
                }
                set
                {
                    DateTime = new DateTime(DateTime.Date.Ticks).AddTicks(value.Ticks);
                }
            }

            private DateTime _date
            {
                get
                {
                    return DateTime.Date;
                }
                set
                {
                    DateTime = new DateTime(DateTime.TimeOfDay.Ticks).AddTicks(value.Ticks);
                }
            }

            BindableProperty DateTimeProperty = BindableProperty.Create("DateTime", typeof(DateTime), typeof(DateTimePicker2), DateTime.Now, BindingMode.TwoWay, propertyChanged: DTPropertyChanged);

            public DateTimePicker2()
            {
                BindingContext = this;

                Content = new StackLayout()
                {
                    Children =
            {
                _datePicker,
                _timePicker,
                _entry
            }
                };

                _datePicker.SetBinding<DateTimePicker2>(DatePicker.DateProperty, p => p._date);
                _timePicker.SetBinding<DateTimePicker2>(TimePicker.TimeProperty, p => p._time);
                _timePicker.Unfocused += (sender, args) => _time = _timePicker.Time;
                _datePicker.Focused += (s, a) => UpdateEntryText();

                GestureRecognizers.Add(new TapGestureRecognizer()
                {
                    Command = new Command(() => _datePicker.Focus())
                });
                _entry.Focused += (sender, args) =>
                {
                    Device.BeginInvokeOnMainThread(() => _datePicker.Focus());
                };
                _datePicker.Unfocused += (sender, args) =>
                {
                    Device.BeginInvokeOnMainThread(() =>
                    {
                        _timePicker.Focus();
                        _date = _datePicker.Date;
                        UpdateEntryText();
                    });
                };
            }

            private void UpdateEntryText()
            {
                _entry.Text = DateTime.ToString(StringFormat);
            }

            static void DTPropertyChanged(BindableObject bindable, object oldValue, object newValue)
            {
                var timePicker = (bindable as DateTimePicker2);
                timePicker.UpdateEntryText();
            }
        }
        #endregion

        #region Các hàm kiểm tra
        // Kiểm tra 2 mã vật tư xem có giống hau hay không
        private bool CheckMaterial()
        {
            // Kiểm tra xem giá trị của hai ô nhập liệu có giống nhau không
            if (txtMaterialCode.Text.ToUpper() == txtMaterialContainer.Text.ToUpper())
            {
                // Nếu giống nhau, đổi màu panel là xanh và hiển thị label OK
                resultPanel.BackgroundColor = Color.Green;
                resultLabel.TextColor = Color.White;
                resultLabel.Text = "OK";
                resultPanel.IsVisible = true;
                return true;
            }
            else
            {
                // Nếu không giống nhau, đổi màu panel là đỏ và hiển thị label NG
                resultPanel.BackgroundColor = Color.Red;
                resultLabel.TextColor = Color.White;
                resultLabel.Text = "NG";
                resultPanel.IsVisible = true;
                // Không cho phép nhập vào ô số lượng và đặt focus vào ô MaterialContainer
                DisplayAlert("Thông báo", $"Thông tin {_uri1} khác thông tin mã {_uri2}.", "OK");
                return false;
            }
        }

        private bool CheckValues()
        {
            if (txtMaterialCode.Text == "" || txtMaterialContainer.Text == "")
            {
                DisplayAlert("Thông báo", "Không được để các thông tin trống.", "OK");
                return false;
            }
            if(Convert.ToInt32(txtRealQuantity.Text) > Convert.ToInt32(txtQuantity.Text))
            {
                DisplayAlert("Thông báo", "Số lượng thực tế đang lớn hơn số lượng kế hoạch.", "OK");
                return false;
            }    
            return true;
        }
        #endregion

        #region Event Button
        private async void TxtMaterialCode_Completed(object sender, EventArgs e)
        {
            string code = txtMaterialCode.Text;
            string group = groups.SelectedItem.ToString();
            DateTime _date = new DateTime(Date.Date.Year, Date.Date.Month, Date.Date.Day, 00, 00, 00);
            string uri = url + $"Material?materialCode={code}&groups={group}&datetime={_date}";
            _uri1 = "vật tư";
            _uri2 = "túi đựng/hộp";
            var response = await Client.GetAsync(uri);
            if (response.IsSuccessStatusCode)
            {
                if (!string.IsNullOrWhiteSpace(txtMaterialCode.Text) && !string.IsNullOrWhiteSpace(txtMaterialContainer.Text))
                {
                    if (!CheckMaterial())
                    {
                        txtMaterialCode.Text = string.Empty;
                        txtMaterialCode.Focus();
                        Device.BeginInvokeOnMainThread(() =>
                        {
                            txtMaterialCode.CursorPosition = 0;
                            txtMaterialCode.SelectionLength = txtMaterialCode.Text.Length;
                        });
                        return;
                    }
                }
                var content = await response.Content.ReadAsStringAsync();
                ResponseViewModel model = Newtonsoft.Json.JsonConvert.DeserializeObject<ResponseViewModel>(content);
                //txtMaterialCodeNumber.Text = model.countCode.ToString();
                txtQuantity.Text = model.data;
                _materialName = model.materialName[0];
                _materialLocation = model.materialLocation[0];
                _datetimePlan = model.timePlan[0];
                _lines = model.line[0];
                txtMaterialContainer.Focus();
            }
            else
            {
                DisplayAlert("Thông báo", "Không tồn tại mã vật tư trong kế hoạch.\nVui lòng kiểm tra lại!", "OK");
                Device.BeginInvokeOnMainThread(() =>
                {
                    txtMaterialCode.CursorPosition = 0;
                    txtMaterialCode.SelectionLength = txtMaterialCode.Text.Length;
                });
            }
        }
        private void TxtMaterialContainer_Completed(object sender, EventArgs e)
        {
            txtMaterialContainer.Text = Regex.Replace(txtMaterialContainer.Text, @"[^0-9]", string.Empty);
            if (txtMaterialContainer.Text.Length == 7)
                txtMaterialContainer.Text = "0" + txtMaterialContainer.Text;
            _uri1 = "túi đựng/hộp";
            _uri2 = "vật tư";
            if (!string.IsNullOrWhiteSpace(txtMaterialCode.Text) && !string.IsNullOrWhiteSpace(txtMaterialContainer.Text))
            {
                if (!CheckMaterial())
                {
                    txtMaterialContainer.Text = string.Empty;
                    txtMaterialContainer.Focus();
                    //Select all
                    Device.BeginInvokeOnMainThread(() =>
                    {
                        txtMaterialContainer.CursorPosition = 0;
                        txtMaterialContainer.SelectionLength = txtMaterialContainer.Text.Length;
                    });
                    return;
                }
            }
            txtRealQuantity.IsReadOnly = false;
            txtRealQuantity.Focus();
        }

        private async void TxtRealQuantity_Completed(object sender, EventArgs e)
        {
            BtnConfirm.Focus();
        }
        private void BtnConfirm_Clicked(object sender, EventArgs e)
        {
            if (!CheckValues()) return;
            int _rQuantity = Convert.ToInt32(txtRealQuantity.Text);
            int _quantity = Convert.ToInt32(txtQuantity.Text);
            if (_rQuantity == _quantity || stackCheckBox.IsVisible == true)
            {
                Submit();
            }
            else
            {
                DisplayAlert("Thông báo", "Vui lòng chọn lí do vì có sự chênh lệch.", "OK");
                BtnConfirm.IsEnabled = true;
                BtnConfirm.BackgroundColor = Color.Orange;
                stackCheckBox.IsVisible = true;
                stackCheckBox.Children.Clear();
                GetReason();
            } 
        }
        #endregion

        #region Hàm lưu dữ liệu khi hoàn thành
        private async void Submit()
        {
            HistoryCheckMaterialVM model = new HistoryCheckMaterialVM();
            model.MaterialCode = txtMaterialCode.Text;
            model.MaterialName = _materialName;
            model.MaterialLocation = _materialLocation;
            model.ReasonID = reasonID;
            model.UserID = globalvariable.UserID;
            model.TotalQuantity = Convert.ToInt32(txtQuantity.Text);
            model.RealQuantity = Convert.ToInt32(txtRealQuantity.Text);
            model.DateTimePlan = _datetimePlan;
            model.Groups = groups.SelectedItem.ToString();
            model.Lines = _lines;
            var json = Newtonsoft.Json.JsonConvert.SerializeObject(model);
            string uri = url + "HistoryCheckMaterial";
            var response = await Client.PostAsync(uri, new StringContent(json, Encoding.UTF8, "application/json"));
            if (response.IsSuccessStatusCode)
            {
                DisplayAlert("Thông báo", "Đã thêm vào lịch sử kiểm tra", "OK");
                refresh();
            }
        }
        #endregion

        #region Hàm refresh
        private void refresh()
        {
            txtMaterialCode.Text = string.Empty;
            txtMaterialContainer.Text = string.Empty;
            txtQuantity.Text = string.Empty;
            txtRealQuantity.Text = string.Empty;
            resultPanel.IsVisible = false;
            BtnConfirm.BackgroundColor = Color.Orange;
            BtnConfirm.TextColor = Color.Black;
            reasonID = 0;
            stackCheckBox.Children.Clear();
            txtMaterialCode.Focus();
            stackCheckBox.IsVisible = false;
            txtRealQuantity.IsReadOnly = true;
        }
        #endregion
    }
}