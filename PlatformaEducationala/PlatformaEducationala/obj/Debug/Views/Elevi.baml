   M S B A M L   `   `   `  ����P  LPlatformaEducationala, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:PlatformaEducationala.ViewModels PlatformaEducationala.ViewModels  5   	   S.clr-namespace:PlatformaEducationala.Converters PlatformaEducationala.Converters  5   	   I)clr-namespace:PlatformaEducationala.ViewsPlatformaEducationala.Views  5   	   '    !PlatformaEducationala.Views.Elevi   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >ctx.clr-namespace:PlatformaEducationala.ViewModels     5   	   Bconvert.clr-namespace:PlatformaEducationala.Converters     5   	   ;local)clr-namespace:PlatformaEducationala.Views     5   	     � Title$  Elevi��5
   	   $	��567��6   $	��654��6$    � DataContext 5      -   'PlatformaEducationala.ViewModels.ElevVM  5   
   .��5      ��  � 	Resources 5   
   4  .PlatformaEducationala.Converters.ConvertorElev   elevConvert��%   &	          5      6$   5      .+�5   
   � .+�5      �� $��Inserare��6   $��15q�6(   $	��100��64   $��30��6@   ��5      �� *ComandaInserare+��5      `� 5       `� 	Converter# [  6#   .1�5      ��  �� ElementName$ txtNume��6"    �� Path$
 Text�68   �� 5      $ 
txtPrenume��6"   $
 Text�6;   �� 5      $ txtDataNastere��6"   $
 Text�6?   �� 5      $ 	txtAdresa��6"   $
 Text�6:   �� 5      $ txtNumarTelefon��6"   $
 Text�6@   �� 5      $ txtEmail��6"   $
 Text�69   �� 5      $ 
txtIdClasa��6"   $
 Text�6;   5      5       �� 5!      $��Actualizare��6   $��15q�6+   $	��100��67   ��6C   �� *ComandaActualizare+��5"      �� $ 	gridElevi��$ SelectedItem��� 5#      $��Stergere��6   $��15q�6(   $	��100��64   ��6@   �� *ComandaStergere+��5$      �� $ 	gridElevi��$ SelectedItem�5%      � 5&   
   $��0,15,0,0q�6   5'      � 5(   
   $��0,15,0,0q�6   .+�5)      �� $	��150��6   $��15(�6    .��6.   Nume:65   �� 5*      -   5        $��txtNume��5*      $	��200��6%   ��61   �� $ 	gridElevi��$ SelectedItem.Nume� �� UpdateSourceTrigger$ PropertyChanged=�5,      � 5-   
   $��0,15,0,0q�6   .+�5.      �� $	��150��6   $��15(�6    .��6.   
Prenume:68   �� 5/      -   5        $��
txtPrenume��5/      $	��200��6(   ��64   �� $ 	gridElevi��$ SelectedItem.Prenume�$ PropertyChanged=�51      � 52   
   $��0,15,0,0q�6   .+�53      �� $	��150��6   $��15(�6    .��6.   Data Nastere:6=   (  "System.Windows.Controls.DatePicker  54      -   5        $��txtDataNastere��54      $	��200��6/      Text 6;   �� $ 	gridElevi��$ SelectedItem.DataNastere�$ PropertyChanged=�56      � 57   
   $��0,15,0,0q�6   .+�58      �� $	��150��6   $��15(�6    .��6.   	Adresa:67   �� 59      -   5        $��	txtAdresa��59      $	��200��6'   ��63   �� $ 	gridElevi��$ SelectedItem.Adresa�$ PropertyChanged=�5;      � 5<   
   $��0,15,0,0q�6   .+�5=      �� $	��150��6   $��15(�6    .��6.   Numar Telefon:6>   �� 5>      -   5        $��txtNumarTelefon��5>      $	��200��6-   ��69   �� $ 	gridElevi��$ SelectedItem.NumarTelefon�$ PropertyChanged=�5@      � 5A   
   $��0,15,0,0q�6   .+�5B      �� $	��150��6   $��15(�6    .��6.   Email:66   �� 5C      -   5        $��txtEmail��5C      $	��200��6&   ��62   �� $ 	gridElevi��$ SelectedItem.Email�$ PropertyChanged=�5E      � 5F   
   $��0,15,0,0q�6   .+�5G      �� $	��150��6   $��15(�6    .��6.   Nume + Id Clasa:6@   �� 5J      -   5        $��
txtIdClasa��5J      $	��200��6)    �� SelectedValuePath$ Value��5L      ��5J   5   �� *ListaIdClase+	 �� SelectedValue	 5K      �� $ 	gridElevi��$ SelectedItem.IdClasa���5M      �� 5N      .R�5O      �� ��5P      `� 5Q   "   
 �� StringFormat$
 	{0} - {1}��6/   .1�5R   &   �� $	 Key�6.   �� 5S   &   $ Value�6.   5T   #   5V      5W      5Y      5Z      &   System.Windows.Controls.DataGrid  5[   
   -   5        $��	gridElevi��5[      $��0,15,0,0q�6$      AutoGenerateColumns .  $	��250��5\         
IsReadOnly . $��Visible=�5]      ��5\       �� *
ListaElevi+   Columns 5^      0  *System.Windows.Controls.DataGridTextColumn  5_      ,  &System.Windows.Controls.DataGridColumn   Header$
 Nume��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Nume+  5`      $ Prenume��6%    66   �� *	Prenume+  5a      $ Data Nastere��6%    6;   �� *DataNastere+  5b      $ Adresa��6%    65   �� *Adresa+  5c      $ Numar Telefon��6%    6<   �� *NumarTelefon+  5d      $ Email��6%    64   �� *Email+  5e      $ Id Clasa��6%    67   �� *	IdClasa+5g      5h      5i      