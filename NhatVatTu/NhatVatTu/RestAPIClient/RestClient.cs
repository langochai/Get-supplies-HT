using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace NhatVatTu.RestAPIClient
{
    public class RestClient<T>
    {
        //private const string MainWebServiceUrl = "http://172.17.161.6:9999/"; // Put your main host url here
        //private const string LoginWebServiceUrl = MainWebServiceUrl + "api/UserCredentials/"; // put your api extension url/uri here
        //private const string LoginWebServiceUrl = MainWebServiceUrl + "api/Login/"; // put your api extension url/uri here
        // This code matches the HTTP Request that we included in our api controller
        public async Task<bool> checkLogin(string username, string password)
        {
            try
            {
                HttpClient Client = new HttpClient();
                // http://MainHost/api/UserCredentials/username=foo/password=foo. The api value and response value should match in order to return a true status code. 
                var response = await Client.GetAsync("http://MainHost/api/UserCredentials/username=foo/password=foo");

                return response.IsSuccessStatusCode; // return either true or false                
            }
            catch (Exception ex)
            {
                throw new Exception("không thể kết nối đến máy chủ API", ex);

            }
        }

    }
}
