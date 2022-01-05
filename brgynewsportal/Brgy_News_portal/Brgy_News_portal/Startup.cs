using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Brgy_News_portal.Startup))]
namespace Brgy_News_portal
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
