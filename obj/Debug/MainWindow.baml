   M S B A M L   `   `   `  ����U  QPossible Points Calculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Possible_Points_Calculator.ViewModels%Possible_Points_Calculator.ViewModels  5      ]3clr-namespace:Possible_Points_Calculator.Converters%Possible_Points_Calculator.Converters  5      +    %Possible_Points_Calculator.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Bvm3clr-namespace:Possible_Points_Calculator.ViewModels     5      Dconv3clr-namespace:Possible_Points_Calculator.Converters     5      X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        � Title$  
MainWindow��5
   	   $	��450��6   $	��800��6)    � DataContext 5      9   3Possible_Points_Calculator.ViewModels.MainViewModel  5      .��5      ]� .+�5      o� $	��Top=�6	   .@�5      m� $��_File��6   .@�5      m� $��_Exit��6   5      m� 5      $��	_Settings��6   .@�5      m� $��Select Positions��6    m� Command 6)   �� *ConfigurePositionsCommand+m� 5      $��Set Starting Positions��6    6/   �� *SetStartingPositionsCommand+�� 5      5      5      �� 5      $	��Top=�6    �� Orientation$ Vertical=�6$   .+�5      �� $ 
Horizontal=�6   .+�5      �� $��Add Score To ��6   �� 5      -   5         ��Name$ CurrentPositionsMenu��5      $	��100��6-   $��50��69   $��Center=�6E   $	��Top=�6b   $��0q�6z   $��Center=�6�   $��15,0,0,0q�5   	   
������ 
���   � �� 
IsEditable .  $��0q�6[    �� Text$ Select Option��5   b   ��6	   �� *	Positions+ �� SelectedItem 6+   �� *SelectedPosition+ �� Mode$ TwoWay=�6b   5       �� 5"      $��10q�68   ��6   �� *EnteredScore+$ TwoWay=�.��6D   	 J� InputBindings	 5#      �� 5$      

 �� Key$
 Return��6    �� Command 6   �� *SubmitScoreCommand+.��5%      5&      �� 5'      $��Submit Score��6   $��10q�6J   ��6#   �� *SubmitScoreCommand+6J   �� 5(      $��	Calculate��6   $��10q�6E   ��6    �� *CalculateCommand+6E   �� 5)      $��Clear Scores��6   $��10q�6J   ��6#   �� *ClearScoresCommand+6J   �� 5+       �� TextAlignment$ Center=�6<   ��6   �� *PotentialScore+$ TwoWay=�6<   5,      � 5-      -   5        $��ConfigurePositionsPopup��5-   
   $��Center=�6)   ��6<   �� *#!ConfigurePositionsPopupVisibility+$ TwoWay=�y�5.      �� *#!ConfigurePositionsPopupVisibility+$ TwoWay=�.��5/      �� $ Vertical=�6   .+�50      �� -   5         ��Name$ 
QbCheckbox��50      $��QB��6#   
������� d� 	IsChecked 6C   �� *	QbChecked+$ TwoWay=��� 51      -   5        $ 
RbCheckbox��51      $��RB��6#   
������� 6C   �� *	RbChecked+$ TwoWay=��� 52      -   5        $ 
WrCheckbox��52      $��WR��6#   
������� 6C   �� *	WrChecked+$ TwoWay=��� 53      -   5        $ 
TeCheckbox��53      $��TE��6#   
������� 6C   �� *	TeChecked+$ TwoWay=��� 54      -   5        $ IopCheckbox��54      $	��IOP��6$   
������� 6E   �� *
IopChecked+$ TwoWay=��� 55      -   5        $ IdpCheckbox��55      $	��IDP��6$   
������� 6E   �� *
IdpChecked+$ TwoWay=��� 56      -	   5        $ DstCheckbox��56      $
��D/ST��6$   
������� 6F   �� *
DstChecked+$ TwoWay=��� 57      -
   5        $ 
HcCheckbox��57      $��
Head Coach��6#   
������� 6K   �� *	HcChecked+$ TwoWay=��� 58      -   5        $ 	KCheckbox��58      $��Kicker��6"   
������� 6F   �� *KickerChecked+$ TwoWay=��� 59      $
��Done��6   $��5q�6N   ��6   �� *ConfigurePositionsDoneCommand+6N   5:      5;      � 5<      -   5         �Name$ SetStartingLineupPopup��5<   
   $��Center=�6*   $	��100��6{   ��6=   �� *StartingLineupPopupVisibility+$ TwoWay=�.��5=      �� $ Vertical=�6   
����  �.+�5>      �� $ 
Horizontal=�6   .+�5?      �� $
��QB: ��6   
�������6   %  Xceed.Wpf.Toolkit.IntegerUpDown  5@      �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�6      Value 6&   �� *StartingQBs+$ TwoWay=�5A      �� 5B      $ 
Horizontal=�6   .+�5C      �� $
��RB: ��6   
�������6     5D      $ 0X�6E    6   �� *StartingRBs+$ TwoWay=�6E   5E      �� 5F      $ 
Horizontal=�6   .+�5G      �� $
��WR: ��6   
�������6     5H      $ 0X�6E    6   �� *StartingWRs+$ TwoWay=�6E   5I      �� 5J      $ 
Horizontal=�6   .+�5K      �� $
��TE: ��6   
�������6     5L      $ 0X�6E    6   �� *StartingTEs+$ TwoWay=�6E   5M      �� 5N      $ 
Horizontal=�6   .+�5O      �� $��IOP: ��6   
�������6     5P      $ 0X�6F    6   �� *StartingIOPs+$ TwoWay=�6F   5Q      �� 5R      $ 
Horizontal=�6   .+�5S      �� $��IDP: ��6   
�������6     5T      $ 0X�6F    6   �� *StartingIDPs+$ TwoWay=�6F   5U      �� 5V      $ 
Horizontal=�6   .+�5W      �� $��DST: ��6   
�������6     5X      $ 0X�6F    6   �� *StartingDSTs+$ TwoWay=�6F   5Y      �� 5Z      $ 
Horizontal=�6   .+�5[      �� $	��K: ��6   
�������6     5\      $ 0X�6D    6   �� *
StartingKs+$ TwoWay=�6D   5]      �� 5^      $ 
Horizontal=�6   .+�5_      �� $
��HC: ��6   
�������6     5`      $ 0X�6E    6   �� *StartingHCs+$ TwoWay=�6E   5a      �� 5b      $
��Done��6   ��6   �� *StartingLineUpDoneCommand+5c      5d      5e      5f      