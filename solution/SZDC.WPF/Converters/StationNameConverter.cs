﻿using System;
using System.Globalization;
using System.Windows.Data;

using SZDC.Model.Infrastructure;

namespace SZDC.Wpf.Converters {

    public class StationNameConverter : IValueConverter {

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture) {

            if (value is SzdcStation szdcStation) {
                return szdcStation.StationName;
            }

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) {
            throw new NotImplementedException(); // not impl.
        }
    }
}
