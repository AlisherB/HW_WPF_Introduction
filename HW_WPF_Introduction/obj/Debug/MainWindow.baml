   M S B A M L   `   `   `  ����N  JHW_WPF_Introduction, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:HW_WPF_IntroductionHW_WPF_Introduction  5   	   $    HW_WPF_Introduction.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:HW_WPF_Introduction     5   	     � Title$  
MainWindow��5   	   $	��430��6   $	��300��6)   .��5	      � -   5         �Name$ mainGrid��5	      #��� ��6   .+�5
   
   �� -   5         ��Name$ userTextBox��5
      $��77,48,77,312q�6'    �� TextWrapping$
 Wrap=�6=   $��Center=�6Q   $��Century Gothic)�6s   $��18(�6�   �� 5   
   -   5         ��Name$ signUpButton��5      $��Sign Up��6'   $
��Left=�69   $��
77,107,0,0q�6T   $	��Top=�6h   $	��138��6�   $��37��6�    � Cursor$
 Hand��6�   $��Century Gothic)�6�   $��18(�6�   6�   �� 5   
   -   5        $ signInButton��5      $��Sign In��6'   $
��Left=�69   $��
77,323,0,0q�6T   $	��Top=�6h   $	��138��6�   $��37��6�   $��Century Gothic)�6�   $��18(�6�   6�   �� 5   
   -   5         ��Name$ textBlockUser��5      $��	77,23,0,0q�6+   $
��Wrap=�6>   $��	User name��6R   $��Century Gothic)�6c   $��16(�6   $	��Top=�6�   $
��Left=�6�   �� 5   
   -   5        $��	sliderRed��5      $
��Left=�6"   $��
20,170,0,0q�6=   $	��Top=�6Q   $	��229��6i    � Minimum$ 0Q�6u    � Maximum$	 255Q�6�   	 �� IsSnapToTickEnabled	 . 
 �� TickFrequency$
 1Q�6�   6�   �� 5   
   -   5        $��sliderGreen��5      $
��Left=�6$   $��
20,218,0,0q�6?   $	��Top=�6S   $	��229��6k   $ 0Q�6w   $	 255Q�6�   	 . $
 1Q�6�   6�   �� 5   
   -   5        $��
sliderBlue��5      $
��Left=�6#   $��
20,266,0,0q�6>   $	��Top=�6R   $	��229��6j   $ 0Q�6v   $	 255Q�6�   	 . $
 1Q�6�   6�   �� 5   
   $
��Left=�6   $��	7,172,0,0q�6/   $
��Wrap=�6B   $��R��6V   $	��Top=�6_   $��12��6w   �� 5   
   $
��Left=�6   $��	7,218,0,0q�6/   $
��Wrap=�6B   $��G��6V   $	��Top=�6_   $��12��6w   �� 5   
   $
��Left=�6   $��	7,266,0,0q�6/   $
��Wrap=�6B   $��B��6V   $	��Top=�6_   $��12��6w    J� RenderTransformOrigin$ 
0.75,0.562&�6�   �� 5   
   $
��Left=�6   $��249,166,0,0q�6+   $	��Top=�6@   ��6X   ��  �� ElementName$ 	sliderRed�� �� Path$ Value��� 5   
   $
��Left=�6   $��249,214,0,0q�6+   $	��Top=�6@   ��6X   �� $ sliderGreen��$ Value��� 5   
   $
��Left=�6   $��249,262,0,0q�6+   $	��Top=�6@   ��6X   �� $ 
sliderBlue��$ Value�5      5      