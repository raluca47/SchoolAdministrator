   M S B A M L   `   `   `  ����P  LPlatformaEducationala, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:PlatformaEducationala.ViewModels PlatformaEducationala.ViewModels  5   	   S.clr-namespace:PlatformaEducationala.Converters PlatformaEducationala.Converters  5   	   I)clr-namespace:PlatformaEducationala.ViewsPlatformaEducationala.Views  5   	   /    )PlatformaEducationala.Views.ProfesoriNote   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >ctx.clr-namespace:PlatformaEducationala.ViewModels     5   	   Bconvert.clr-namespace:PlatformaEducationala.Converters     5   	   ;local)clr-namespace:PlatformaEducationala.Views     5   	     � Title$  ProfesoriNote��5
   	   $	��674��6   $	��439��6,    � DataContext 5      -   'PlatformaEducationala.ViewModels.NotaVM  5   
   .��5      ��  � 	Resources 5   
   4  .PlatformaEducationala.Converters.ConvertorNota   notaConvert��%   &	          5      6$   5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ noteDG��5      $��0,15,0,0q�6#      AutoGenerateColumns .  $	��250��5         
IsReadOnly . $��Visible=�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Id Materie��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *	IdMaterie+  5      $ Valoare��6%    66   �� *	Valoare+  5      $ 	Este Teza��6%    68   �� *
EsteTeza+  5      $ Semestru��6%    67   �� *
Semestru+  5      $ Medie Incheiata��6%    6>   �� *MedieIncheiata+  5      $ Id Elev��6%    66   �� *IdElev+5      � 5   
   .+�5      �� -   5        $��Inserare��5      $��15q�6(   $	��100��64   $��30��6@   ��5       �� *ComandaInserare+��5!      `� 5"      	 `� 	Converter#	 [  6#   .1�5#      �� 
 �� ElementName$
 txtIdMaterie��6"    �� Path$
 Text�6=   �� 5$      $
 
txtValoare��6"   $
 Text�6;   �� 5%      $
 txtEsteTeza��6"   $ 	IsChecked�6<   �� 5&      $
 txtSemestru��6"   $
 Text�6<   �� 5'      $
 txtMedieIncheiata��6"   $ 	IsChecked�6B   �� 5(      $
 	txtIdElev��6"   $
 Text�6:   5)      5+      �� 5,      -   5        $��Anulare Nota��5,      $��15q�6,   $	��100��68   ��6D   �� *ComandaStergere+��5-      �� $
 noteDG��$ SelectedItem�6X   5.      � 5/   
   $��0,15,0,0q�6   .+�50      �� $	��150��6   $��15(�6    .��6.   Nume + Id Materie:6B   �� 53      -   5        $��txtIdMaterie��53      $	��200��6+    �� SelectedValuePath$ Value��55       �� SelectedValue 54      �� $
 noteDG��$ SelectedItem.IdMaterie���56      �� 57      .R�58      �� ��59      `� 5:   "    �� StringFormat$ 	{0} - {1}��6/   .1�5;   &   �� $	 Key�6.   �� 5<   &   $ Value�6.   5=   #   5?      5@      5B      5C      � 5D   
   $��0,15,0,0q�6   .+�5E      �� $	��150��6   $��15(�6    .��6.   
Valoare:68   �� 5H      -   5        $��
txtValoare��5H      $	��200��6(   ��64   �� $
 noteDG��$ SelectedItem.IdElev� �� UpdateSourceTrigger$ PropertyChanged=�5J      � 5K   
   $��0,15,0,0q�6   .+�5L      �� $	��150��6   $��15(�6    .��6.   
Este Teza:6:   �� 5M      -   5        $��txtEsteTeza��5M      $	��200��6*    d� 	IsChecked 66   �� $
 noteDG��$ SelectedItem.EsteTeza�$ PropertyChanged=�5O      � 5P   
   $��0,15,0,0q�6   .+�5Q      �� $	��150��6   $��15(�6    .��6.   	Semestru:69   �� 5R      -   5        $��txtSemestru��5R      $	��200��6)   ��65   �� $
 noteDG��$ SelectedItem.Semestru�$ PropertyChanged=�5T      � 5U   
   $��0,15,0,0q�6   .+�5V      �� $	��150��6   $��15(�6    .��6.   Medie Incheiata:6@   �� 5W      -   5        $��txtMedieIncheiata��5W      $	��200��60    6<   �� $
 noteDG��$! SelectedItem.MedieIncheiata�$ PropertyChanged=�5Y      � 5Z   
   $��0,15,0,0q�6   .+�5[      �� $	��150��6   $��15(�6    .��6.   Nume + Id Elev:6?   �� 5\      -	   5        $��	txtIdElev��5\      $	��200��6(   $ Value��5^       5]      �� $
 noteDG��$ SelectedItem.IdElev���5_      �� 5`      .R�5a      �� ��5b      `� 5c   "   $ 	{0} - {1}��6/   .1�5d   &   �� $	 Key�6.   �� 5e   &   $ Value�6.   5f   #   5h      5i      5k      5l      5m      5n      