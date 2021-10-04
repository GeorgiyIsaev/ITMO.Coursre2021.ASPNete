using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lab05.Ex01.MvcCreditApp1.Startup))]
namespace Lab05.Ex01.MvcCreditApp1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
