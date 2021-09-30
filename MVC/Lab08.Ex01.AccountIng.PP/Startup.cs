using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lab08.Ex01.AccountIng.PP.Startup))]
namespace Lab08.Ex01.AccountIng.PP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
