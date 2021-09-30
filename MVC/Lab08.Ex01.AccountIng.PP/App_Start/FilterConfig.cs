using System.Web;
using System.Web.Mvc;

namespace Lab08.Ex01.AccountIng.PP
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
