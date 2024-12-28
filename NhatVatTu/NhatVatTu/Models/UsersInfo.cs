using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace NhatVatTu.Models
{
    class UsersInfo
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("sbd")]
        public string Sbd { get; set; }

        [JsonProperty("username")]
        public string Username { get; set; }
        [JsonProperty("password")]
        public string Password { get; set; }
    }
}
