   M S B A M L   `   `   `  ����  WpfApp16    vipief.SendMailDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  
Send Email��5   	   $	��300��6   $	��400��6)   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��From:��6   $��0��6    $��0��6-   $��5q�6=   �� 5   
   -   5         ��Name$ FromTextBox��5      $��0��6'   $��1��64   $��5q�6D   �� 5   
   $	��To:��6   $��1��6   $��0��6+   $��5q�6;   �� 5   
   -   5        $ 	ToTextBox��5      $��1��6%   $��1��62   $��5q�6B   �� 5   
   $��Subject:��6   $��2��6#   $��0��60   $��5q�6@   �� 5   
   -   5        $ SubjectTextBox��5      $��2��6*   $��1��67   $��5q�6G   �� 5   
   $��Body:��6   $��3��6    $��0��6-   $��5q�6=   �� 5   
   -   5        $ BodyTextBox��5      $��3��6'   $��1��64   $��5q�6D    �� TextWrapping$
 Wrap=�6O    �� AcceptsReturn$
 True��6c   " �� VerticalScrollBarVisibility$
 Auto=�6x   $	��100��6�   �� 5   
   $��4��6   $��2��6"    �� Orientation$ 
Horizontal=�66   $��Right=�6O   .+�5      �� -   5        $
��Send��5      $��5q�6=   �� 5       -   5        $��Cancel��5       $��5q�6A   5!      5"      5#      