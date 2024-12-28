using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using ScanBarcode.RestAPIClient;

namespace ScanBarcode.ViewModel
{
    public class MaterialViewModel : INotifyPropertyChanged
    {
        #region Fields

        private dynamic userInfo;
        #endregion

        #region Properties
        public static RestServiceMaterial DataServices { get; private set; }

        public dynamic UserInfo
        {
            get { return userInfo; }
            set
            {
                userInfo = value;
                RaisedOnPropertyChanged("UserInfo");
            }
        }
        #endregion

        #region Constructor

        public MaterialViewModel()
        {
            DataServices = new RestServiceMaterial();

            //Gets data from REST service and set it to the ItemsSource collection
            RetrieveDataAsync("38100501", "NDND004922394");
        }

        #endregion

        #region Method
                                                     
        public async void RetrieveDataAsync(string Material_c, string groupid)
        {
            UserInfo = await DataServices.GetDataAsync(Material_c, groupid);
        }
        #endregion

        #region INotifyPropertyChanged

        public event PropertyChangedEventHandler PropertyChanged;

        public void RaisedOnPropertyChanged(string _PropertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(_PropertyName));
            }
        }
        #endregion
    }
}
