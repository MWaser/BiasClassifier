using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace BiasClassifier
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Inc/WebForms/WebForms.js",
                            "~/Inc/WebForms/WebUIValidation.js",
                            "~/Inc/WebForms/MenuStandards.js",
                            "~/Inc/WebForms/Focus.js",
                            "~/Inc/WebForms/GridView.js",
                            "~/Inc/WebForms/DetailsView.js",
                            "~/Inc/WebForms/TreeView.js",
                            "~/Inc/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Inc/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Inc/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Inc/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Inc/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Inc/modernizr-*"));
        }
    }
}