   M S B A M L   `   `   `  ����C  ?WpfApp16, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:vipiefvipief  5   	       vipief.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:vipief     5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   `� .�5      c� .@�5      �� $��ApplicationCommands.Cut��6   $	��Cut��6;   �� 5      $��ApplicationCommands.Copy��6   $
��Copy��6<   �� 5      $��ApplicationCommands.Paste��6   $��Paste��6=   �� 5      �� 5      $��ApplicationCommands.Undo��6   $
��Undo��6<   �� 5      $��ApplicationCommands.Redo��6   $
��Redo��6<   �� 5      �� 5      $ ��EditingCommands.ToggleBold��6   $
��Bold��6>   �� 5      $"��EditingCommands.ToggleItalic��6   $��Italic��6@   �� 5      $%��EditingCommands.ToggleUnderline��6   $��	Underline��6C   �� 5      �� 5      $&�� EditingCommands.IncreaseFontSize��6   $��A+��6D   �� 5      $&�� EditingCommands.DecreaseFontSize��6   $��A-��6D   �� 5      �� 5      $��EditingCommands.AlignLeft��6   $
��Left��6=   �� 5       $!��EditingCommands.AlignCenter��6   $��Center��6?   �� 5!      $ ��EditingCommands.AlignRight��6   $��Right��6>   �� 5"      $"��EditingCommands.AlignJustify��6   $��Justify��6@   �� 5#      �� 5$      $)��#EditingCommands.IncreaseIndentation��6   $��Indent+��6G   �� 5%      $)��#EditingCommands.DecreaseIndentation��6   $��Indent-��6G   5&      5'      �� 5(   
   -   5         ��Name$ richTextBox��5(       �� 
AcceptsTab$
 True��6+   $��1��6=   $	��Top=�6J    � 	Resources 5)       �� 
TargetType �� Property �� Value��%X   'J�       �� 5*      " J�6   .�5+      ��  �@��Margin$ 0q�6/   5,      5-      5.      � 5/   
   $��2��6   $��10q�6    � ColumnDefinitions 50      �� 51      �� 52      �� 53      �� 54      .+�56      �� -   5        $	��New��56      6#   �� 57      -   5        $��1��57      $
��Open��6%   64   �� 58      -   5        $��2��58      $
��Save��6%   64   �� 59      -   5        $��3��59      $
��Send��6%   64   5:      5;      5<      