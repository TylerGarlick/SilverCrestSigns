using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace SilverCrestSignsCMS
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("elmah.axd");
            routes.IgnoreRoute("{*favicon}", new { favicon = @"(.*/)?favicon.ico(/.*)?" });

            routes.MapRoute("PagesController", "Pages/{url}",                           // URL with parameters
                 new { controller = "Home", action = "Pages", url = "" }  // Parameter defaults
            );
            routes.MapRoute(
                 "Default",                                              // Route name
                 "{controller}/{action}/{id}",                           // URL with parameters
                 new { controller = "Home", action = "Index", id = "" }  // Parameter defaults
            );

        }

        protected void Application_Start()
        {
            RegisterRoutes(RouteTable.Routes);

            // So we can use data annotations
            //ModelBinders.Binders.DefaultBinder = new DataAnnotationsModelBinder();
        }
    }
}