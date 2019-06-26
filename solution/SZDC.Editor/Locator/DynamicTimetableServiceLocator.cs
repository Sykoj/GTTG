﻿using Autofac;

using SZDC.Editor.Modules.Core;
using SZDC.Editor.Modules.Factories;
using SZDC.Editor.Modules.Segments;
using SZDC.Editor.Modules.Services;
using SZDC.Editor.Modules.Tools;
using SZDC.Editor.Modules.Views;

namespace SZDC.Editor.Locator {

    /// <summary>
    /// Provides new scope of objects in one dynamic train timetable shared between it's tools for example as one instance
    /// </summary>
    public class DynamicTimetableServiceLocator {

        private readonly ILifetimeScope _lifetimeScope;

        public DynamicTimetableServiceLocator() {
            var builder = new ContainerBuilder();
            builder
                .RegisterModule<DynamicCoreModule>()
                .RegisterModule<FactoryModule>()
                .RegisterModule<SegmentsModule>()
                .RegisterModule<ServicesModule>()
                .RegisterModule<ToolsModule>()
                .RegisterModule<ViewsModule>();

            _lifetimeScope = builder.Build();
        }

        public ILifetimeScope GetScopedServiceLocator() {
            return _lifetimeScope.BeginLifetimeScope();
        }
    }
}
