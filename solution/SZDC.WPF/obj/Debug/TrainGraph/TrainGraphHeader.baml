   M S B A M L   `   `   `  ����C  ?SZDC.WPF, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SZDC.Wpf.ModifiersSZDC.Wpf.Modifiers  5      5clr-namespace:SZDC.Wpf.DesignerSZDC.Wpf.Designer  5      9!clr-namespace:SZDC.Wpf.ConvertersSZDC.Wpf.Converters  5      9!clr-namespace:SZDC.WPF.TrainGraphSZDC.WPF.TrainGraph  5	      *    $SZDC.Wpf.TrainGraph.TrainGraphHeader   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6	modifiers clr-namespace:SZDC.Wpf.Modifiers     5      4designerclr-namespace:SZDC.Wpf.Designer     5      8
converters!clr-namespace:SZDC.Wpf.Converters     5      8
trainGraph!clr-namespace:SZDC.WPF.TrainGraph     5	        � 	Resources  5      /   )SZDC.Wpf.Converters.TimeIntervalConverter (  $StaticTimetableTimeIntervalConverter5   /SZDC.Wpf.Converters.TrainSelectionToolConverter  TrainSelectionToolConverter3   -SZDC.Wpf.Converters.HitTestComponentConverter  HitTestComponentConverter2   ,SZDC.Wpf.Converters.ScaleToIsScaledConverter  IsScaledConverter  	InfoField �� 
TargetType �� Property �� Value  TimeInterval��%�  &	        &	      &	 &     &	 9     &	 L     &	 �       5   
   6+     5   
   61     5   
   6/     5   
   6.   �� 5   
   " ��6"   .�5      ��  � ��
 �����6+   �� 5       �@��TextAlignment$ Center=�6.   �� 5       � ��$ Center=�62   6C   5      �� 5   
   " ��6%   .�5      ��  �@��TextAlignment$ Center=�6.   �� 5       � ��$ Center=�62   5      5       .��5"      �  � RowDefinitions 5#   
   �� 5$      $��4* �6   �� 5%      $	��48* �6   �� 5&      $��4* �6   �� 5'      $	��48* �6   �� 5(      $��4* �6    � ColumnDefinitions 5*   
   �� 5+      $	��100 �6   �� 5,      $	��150 �6   �� 5-      $	��100 �6   �� 5.      $	��100 �6   �� 5/      $��20 �6   �� 50      $	��100 �6   �� 51      $	��200 �6   �� 52      $	��400 �6   �� 53      $��5* �6   .+�56   
   �� $��1��6   $��0��6!   $��Select time:��61   #��[ 6E   �� 57   
   $��3��6   $��0��6!   $��Select train:��61   #��[ 6F   �� 58   
   $��1��6   $��2��6!   $��2��61   $��Selected train schedule:��6E   #��[ 6e   �� 59   
   $��1��6   $��5��6!   $��Visible interval:��61   #��[ 6J   �� 5:   
   $��3��6   $��5��6!   $��Viewable interval:��61   #��[ 6K   /   )SZDC.WPF.TrainGraph.TrainSelectionControl  5=   
   $��3��6+   $��1��68   $��3��6H   $��30��5A   �   $	��Top=�6�    � DataContext 5?   &   &    SZDC.Wpf.Converters.MultiBinding  *��  �� Path$ Tools.TrainSelectionTool��� $ 	ViewModel�+ `� 	Converter# [ 5A   �   )   #SZDC.Wpf.Modifiers.ViewTimeModifier  5C   
   $��1��6%   $��1��65   {�5D   %   �� $ ViewProvider.Scale�	 �� Mode$	 OneWay=�
 �� 	Converter#
 [ ��5E   %   �� $. (Tools.ViewTimeModifierTool.TimeIntervals� �� SelectedItem 5F   %   �� $5 /Tools.ViewTimeModifierTool.SelectedTimeInterval�$	 TwoWay=�&    SZDC.Wpf.Modifiers.TrainModifier  5H   
   $y�Hidden=�6"   $��3��66   $��1��6F   �� 5J   
   $��1��6   $��6��6!   #��[ 5K      ��5L      �� $7 1ViewProvider.DateTimeContext.ViewDateTimeInterval�#
 [  �� 5O   
   $��3��6   $��6��6!   #��[ 5P      ��5Q      �� $: 4ViewProvider.DateTimeContext.ContentDateTimeInterval�#
 [  -	   'SZDC.Wpf.Modifiers.TimeComponentControl	  5T   
   $��1��6)   $��3��66   $��7��5U   )    5V   )   �� $7 1Tools.ComponentHitTestTool.HitTestedTimeComponent�#
 [ 5X      5Y      