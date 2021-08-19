# anaconda3 on an arch-machine

Tutorial to configure and start anaconda3 on linux This may help on
every linux disto i guess

I grep most of the stuff from the [anaconda documentation](https://docs.anaconda.com/anaconda/install/ "docs.anaconda")

# Install it

First of all get the [dependencies](https://docs.anaconda.com/anaconda/install/linux/)

Download the installation file from [here](https://www.anaconda.com/products/individual#linux)
scroll to the bottom of the page and choose the package (i grept the first one)

Then run in the terminal  
The path is normally ~/Downloads
```console
sha256sum /path/filename
```

Now u run in the Terminal
```console
bash ~/path/filename
```

Read and accept the license terms with **YES** at the end of the text

The normal installation path is ~/anaconda  
You can simply change it if you type f.e.
```console
~/test/anaconda
```
and press enter

Now it ask you for running conda init  
write **yes** and enter

# Run it

## First start

Now we come, for me, to the "tricky" part. How to start it?  
Thats why i wrote a little **script** for anaconda.

You can start anaconda with the following command in your terminal.
```console
source ~/.bashrc activate
anaconda-navigator
``` 

Anaconda starts and u can work with it

Youre Terminal is in the base mode, to exit it type
```console
source deactivate
```

## The *problem*

If u start it like this your terminal is permantly in the "base" mode  
You can fix this with the following command in the terminal and restart it. 
```console
conda config --set auto_activate_base TRUE
```

If u want to start anaconda again, you cant because u deactivated the base and you have to run
```console
conda config --set auto_activate_base FALSE
source ~/.bashrc activate
anaconda-navigator
```

I put all that stuff in a simple script.

## The script
You just have to clone the script into a directory and give him the execute rights
```console
cd /DIRECTORY-OF-THE-SCRIPT
chmod 744 anaconda.sh
``` 

Then you can give it an alias.  
You have to open the .bashrc with youre prefered editor and add
```console
alias anaconda="source /home/USERNAME/DIRECTORY-OF-THE-SCRIPT/anaconda.sh"
```  
safe the file and restart the terminal

Now you can use the script in your terminal
```console
anaconda on		#starts anaconda
anaconda off 	#exits the base mode and deactivate it
```

# Thanks
I hope i could help you out.  
For any suggestions or questions just write me.

Maniac

