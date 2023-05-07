@chcp 65001
@echo off
mkdir C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\"batch"
mkdir C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\batch\"Скрытая папка"
mkdir C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\batch\"Не скрытая папка"
attrib +h  C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\batch\"Скрытая папка"
xcopy/? 
xcopy/? > C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\batch\"Не скрытая папка"\copyhelp.txt
xcopy C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\batch\"Не скрытая папка"\copyhelp.txt C:\Users\GateWay\Лабораторные\ПЗ-22-1\"Бараннік Варвара Сергіївна"\batch\"Скрытая папка"\copied_copyhelp.txt /h
pause