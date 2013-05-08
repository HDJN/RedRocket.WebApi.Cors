﻿using System;

[assembly: WebActivator.PreApplicationStartMethod(typeof($rootnamespace$.App_Start.CorsConfig), "PreStart")]

namespace $rootnamespace$.App_Start {
    public static class CorsConfig {
        public static void PreStart() {
            GlobalConfiguration.Configuration.MessageHandlers.Add(new RedRocket.WebApi.Cors.CorsHandler());
        }
    }
}
