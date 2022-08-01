# Flatiron Multi Bake Helper for Autodesk 3ds Max

This Macroscript provides a convenient dialog to select multiple Flatiron bake groups and bake then all in succession. This uses all bake settings as they currently are in Flatiron. If different groups need individual bake settings this is beyond the scope of this script but it can be used as a teplate for custom scripts.

*This is a helper tool for the 3d-io Flatiron plug-in and requires Flatrion to function. Check https://www.texturebaking.com for more details about Flatiron.*

## System Requirements
Autodesk 3ds Max 2020-2023 with 3d-io Flatiron installed.

## Installation

To install the macroscript copy the file *FlatironMultiBake.mcr* into your *usermacros* directory and *FlatironMultiBake_32.png* into your *usericons* directory.
You can find both directories in the user files of your 3ds Max installation:
C:/Users/<UserName>/AppData/Local/Autodesk/3dsMax/<ReleaseNumber> - 64bit/ENU/
(Depending on the language you use in Windows parts of this path might be localized into your language)

![Flatiron MultiBake Installation image](https://github.com/3d-io/Flatiron-MultiBake/blob/main/images/flatiron_multibake_install.png)
<br/>

Alternatively you can also drag the file *FlatironMultiBake.mcr* into your 3ds Max viewport while Max is running or you can open and run the script through the 3ds Max scripting tools. Either of these will install the script to your usermacros directory but it will not copy the icon.

After the macroscript has been installed you can use the 3ds Max customization options to make the tool available in menus, toolbars or quad menus however you want.

Select *Customize -> Customize User Interface* from the menu or right click on a toolbar and select *Customize*.
From this menu you can customize your interface and add the tool where you want it.

For example to add it to a toolbar:
Pick the tab for the interface component where you want to add the tool (*Toolbars*).
Flatiron Multi Bake can be found within the category *3d-io*.
Drag the Flatiron Multi Bake took from there to your toolbar.
Then just click the toolbar button whenever you want to use it.

## Usage
Starting the Flatiron Multi Bake tool opens a floating dialog window that lists all of Flatiron's bake groups in the current scene.

You can select the groups you want to bake in the list or use the *All/None/Invert* buttons for convenience.

![Flatiron MultiBake Installation image](https://github.com/3d-io/Flatiron-MultiBake/blob/main/images/flatiron_multibake_screenshot.png)
<br/>

Clicking the *Bake* button will bake all selected groups. Flatiron will use its current settings for all of them.

The list of groups refreshes only when you open the tool or click the *Refresh* button. If you create or remove groups or load a different scene while the tool is open you need to refresh before you can select them.

## Uninstall
To uninstall the tool just remove the macroscript from your *usermacros* directory and the icon from your *usericons* directory. Refer to the installation chapter above for the corresponding path.



https://www.3d-plugin.com
