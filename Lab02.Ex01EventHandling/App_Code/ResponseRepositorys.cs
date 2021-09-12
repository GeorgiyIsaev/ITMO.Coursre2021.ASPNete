using Lab01.Ex01.EmptyWebSite.Models;
using System.Collections.Generic;

namespace Lab01.Ex01.EmptyWebSite
{
    public class ResponseRepositorys
    {
        private static ResponseRepositorys repository = new ResponseRepositorys();
        private List<GuestResponse> responses = new List<GuestResponse>();
        public static ResponseRepositorys GetRepository()
        {
            return repository;
        }
        public IEnumerable<GuestResponse> GetAllResponses()
        {
            return responses;
        }
        public void AddResponse(GuestResponse response)
        {
            responses.Add(response);
        }
    }
}