using Newtonsoft.Json;
using NhatVatTu;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace ScanBarcode.RestAPIClient
{
    public class RestServiceMaterial
    {
        public async Task<dynamic> GetDataAsync(string material_c, string groupid)
        {
            System.Net.Http.HttpClient client = new System.Net.Http.HttpClient();
            var RestUrl = Host.address1 + "material/getrequestinfo/materialcode=" + material_c + "/groupid=" + groupid; // Set your REST API url here
                                                                                                                       // client = new HttpClient();

            //Sends request to retrieve data from the web service for the specified Uri
            var response = await client.GetAsync(RestUrl);

            return response.StatusCode;
        }
        //public List<MaterialInfo> GetMaterial(string material, string groupid)
        //{
        //    List<MaterialInfo> lp = new List<MaterialInfo>();
        //    HttpClient client = new HttpClient();
        //    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        //    try
        //    {
        //        HttpResponseMessage response = client.GetAsync(Host.address + "material/getrequestinfo/materialcode=" + material + "/groupid=" + groupid).Result;
        //        if (response.IsSuccessStatusCode)
        //        {
        //            lp = JsonConvert.DeserializeObject<MaterialInfo[]>(response.Content.ReadAsStringAsync().Result).ToList();
        //        }
        //    }
        //    catch
        //    {

        //    }

        //    return lp;
        //}


        //public List<SerialModel> Checkmaterial(string material, string groupid)
        //{
        //    List<SerialModel> lp = new List<SerialModel>();
        //    HttpClient client = new HttpClient();
        //    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

        //    HttpResponseMessage response = client.GetAsync(Host.address + "checkmaterial/CheckExistGroupid/materialcode=" + material + "/groupid=" + groupid).Result;
        //    if (response.IsSuccessStatusCode)
        //    {
        //        lp = JsonConvert.DeserializeObject<SerialModel[]>(response.Content.ReadAsStringAsync().Result).ToList();
        //    }

        //    return lp;
        //}


        //public async Task<List<SoluongModel>> CheckSoluongcap(string material, string groupid)
        //{
        //    var content = "";
        //    HttpClient client = new HttpClient();
        //    var RestURL = Host.address + "CheckSoluongcap/KTSoluongCap/materialcode=" + material + "/groupid=" + groupid;
        //    client.BaseAddress = new Uri(RestURL);
        //    client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
        //    HttpResponseMessage response = await client.GetAsync(RestURL);
        //    content = await response.Content.ReadAsStringAsync();
        //    var Items = JsonConvert.DeserializeObject<List<SoluongModel>>(content);
        //    return Items;

        //}
    }
}
