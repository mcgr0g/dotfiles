Repo for my dotfiles, configs & tips
==============================================
#For system

##(x)ubuntu
**dark theme**

    sudo add-apt-repository ppa:noobslab/themes
    sudo apt-get update
    sudo apt-get install delorean-dark

>**Note:** perfect is delorean-dark-theme-G-3.9

##kubuntu
**dark theme**

    sudo sudo apt-get install qtcurve
    
    
 1. download [theme](http://kde-look.org/content/show.php/Hex?content=164147)
 2. Start KDE “System Settings”
 3. Click “Appearance”
 4. In the “Style” tab, click the widget style dropdown menu and select “QtCurve”
 5. Choose a preset theme, import one you have downloaded from KDE-look.org, or fiddle with the settings until you have the theme you want
 6. Click the “Legacy” option (third from the bottom)
 7. Click “Export colors and fonts” for both KDE3 and pure Qt3, and then click OK
 8. With the appearance settings still open, click “GTK Styles and Fonts”
 9. Choose “User another style”, select “QtCurve”, and then click “Apply”
 10. Close System Settings

> At this point, you have configured the KDE4 and GTK2 settings
> But your pure Qt3 and Qt4 apps, such as SMplayer and Arora browser, will be unaffected. 
> Follow these steps to configure each.

 1. Press Alt-F2 and type “qtconfig” in the Run Command dialog
 2. When the Qt-Configuration window appears, select “QtCurve” as the GUI style
 3. Click “File” and “Save”
 4. Close the window
 5. Press Alt-F2 again and this time type “qtconfig-qt4″
 6. Select QtCurve, click “File” and “Save”, and close the window.

**terminal colors**

> font: #AAAAAA
> background: #232323

#For vim:
for solve troubles with **vim-airline**:

 1. read this [paragraph](https://powerline.readthedocs.org/en/latest/installation/linux.html#fontconfig) about fontconfig
 2. make tips from 1 to 5 to . It'll decrease blood pressure
