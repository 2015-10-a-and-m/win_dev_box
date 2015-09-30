#Develop With Passion® - Windows Machine Setup

##The following setup should take between 30-90 minutes to complete depending on your skill level and familiarity with unix based environments.

##Network Security Considerations

* Make sure that you have access to port 443 for github ssh operations (have your network admins open this up for the week if necessary, to avoid any unecessary complications) 

##The main programs you will be installing in this setup are:

* Git
* Ruby
* Mingw
* VS2015 Community Edition

#Required Setup

The following is the setup that you WILL need to perform to configure all necessary prerequisites to be able to enjoy the week. If you have any questions, please do not hesitate to contact [me](mailto:jp@developwithpassion.com)

##Make sure that you have configured windows to show all hidden files and folders

##Create the utility folder

1. Open up windows explorer and navigate to your C:\ drive
2. Create a new folder at the root of C:\ called utils (all lowercase). All of the tools we will install for the week will go into here.

##Get setup at [Github](http://github.com)

* [Sign up](https://github.com/signup/free) for a free account at github.com. My recommendation is to use an all lowercase username.

##Fork the project repositories for the week

1. Login to your account at [github](https://github.com/login)
2. Navigate to the following url: http://github.com/2015-10-a-and-m 
3. Click on the code repository: ![repository](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/github_fork_1.jpg)
4. Click on the fork button to create your own copy of the code repository: ![code](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/github_fork_2.jpg)

##Install Git for windows

1. Download Git from [here](https://s3.amazonaws.com/developwithpassion-files/training/Git-1.9.4-preview20140611.exe), this is a stable build (older) that is not plagued with weird SSH timeout issues.

* Run the installer and configure according to the following screenshots:

![git_setup_part_1](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/git_setup_part_0.jpg)
![git_setup_part_2](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/git_setup_part_1.jpg)
![git_setup_part_3](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/git_setup_part_2a.jpg)
![git_setup_part_4](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/git_setup_part_3a.jpg)

For the remainder of the document, when asked to open a git bash prompt, use either the Start Menu item you created during the install or navigate to your C:\utils\git folder in explorer and double click on the [Git Bash.vbs] file

##Install Ruby

1. Download ruby from [here](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.2.3.exe). Run the installer and configure according to the following screenshots:

![ruby_setup_part_1](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/ruby_setup_1.jpg)

##Setup your git ssh authentication key

1. Open up a git bash prompt
2. Enter the following command:

    ```bash
    ssh-keygen -t rsa -C your_email_address  
    ```
   
   Accept the defaults for the remaining prompts  (leave the passphrase blank).  
3. Navigate to the folder where your ssh key was created (by default your profile ssh folder C:\Users\your_user_name\\.ssh)
4. Open the file id_rsa.pub and copy the contents to the clipboard.
5. Login to your account at [github](https://github.com/login).
6. Navigate to your [ssh settings](https://github.com/settings/ssh)
7. Click on the Add SSH Key Button
8. Give your key a title and paste the public key that is in your clipboard from step 4 into the Key text entry:

![ssh key entry](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/add_ssh_key.png)

##Verify that your git ssh authentication works

1. Open up a git bash prompt
2. Enter the following command:

    ```bash
    ssh -v git@github.com
    ```
3. If prompted to cache the server identity, type yes.
4. If you have setup your ssh settings correctly the bottom part of the command output should look similar to the following:

```bash
 developwithpassion! You've successfully authenticated, but GitHub does not provide shell access.
 debug1: channel 0: free: client-session, nchannels 1
 Connection to ssh.github.com closed.
 Transferred: sent 3512, received 2008 bytes, in 0.2 seconds
 Bytes per second: sent 20911.4, received 11956.1
 debug1: Exit status 1
```


##Install Mingw

Click on this [link](https://s3.amazonaws.com/developwithpassion-files/training/mingw-get-setup.exe) and install according to the following screenshots:

![mingw_setup_part_1](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_1_a.jpg)
![mingw_setup_part_2](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_2.jpg)
![mingw_setup_part_3](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_3.jpg)
![mingw_setup_part_4](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_4.jpg)
![mingw_setup_part_5](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_5.jpg)
![mingw_setup_part_6](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_6.jpg)
![mingw_setup_part_7](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_7.jpg)
![mingw_setup_part_8](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/mingw_setup_part_8.jpg)

##Install VS2015 Community Edition

Download the installer for VS2015 Community Edition from [here](https://go.microsoft.com/fwlink/?LinkId=532606&clcid=0x409) and install according to this screenshot:

![vs_20015_setup_part_1](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/vs_2015_part_1.jpg)

If you already have a copy of visual studio 2015 you can use that, but I would "STRONGLY" recommend installing it to a path that has "NO" spaces in it.

##Clone this repository

1. Open up a git bash prompt and type the following commands:

```bash
cd /c
mkdir course
cd course
git clone https://github.com/2015-10-a-and-m/win_dev_box
```

##Run the dev box setup

1. Open up a git bash prompt and run the following commands:

```bash
cd /c/course/win_dev_box
./x.bootstrap
```

When the script completes you will be prompted with the following message:

```bash
Change the settings in the file [your login name].settings and rerun the script ./copy_configs
```

If you followed the setup above correctly, the only setting you should need to change is the username setting under the "github" section. This just needs to be changed to your github username. The ssh_key value is the path to the ssh key that you setup near the top of the document. This should not need to be changed unless you placed/named your key something different.

Here is what your file should look like (before you make the changes you need to):

```ruby
configure({
  github: {
    ssh_key: '~/.ssh/id_rsa',
    ssh_entry: 'github',
    username: 'YOU NEED TO CHANGE THIS'
  },
  paths: {
    windows:{
      utils: "C:\\utils\\",
      ruby: "C:\\ruby\\223\\",
    },
    unix:{
      utils: '/c/utils/',
      ruby: '/c/utils/ruby/223/',
      mingw: delayed { 
        File.join(settings.paths.unix.utils, 'mingw')
      }
    }
  }
})
```

As you can see, the only "setting" that has to be changed is your github username. Make any changes that are necessary.

##Completing Mingw setup

Open up an msys prompt (use explorer and navigate to to C:\utils\mingw\msys\1.0\) and double click on the msys.bat file.

Type in the following commands:

```bash
cd /c/course/win_dev_box
./install_mingw
./copy_configs
```

##Verify your setup

Close down any existing msys/git bash prompts and open up a new msys prompt (if you have not already, I would recommend having a fast way to activate this, whether it be through a launcher or a shortcut).

If you happened to have put a passphrase on your ssh key (following these steps you would not have), you will be prompted for your passphrase. This is so that it can be stored in the ssh-agent so that you don't need to type it in on successive calls to github.

Type the following command:

```bash
devbox
```

This should successfully have switched your directory to the /c/course/win_dev_box folder

Type the following command:

```bash
ssh -v github
```

If prompted to cache the server identity, type yes. The command output should look similar to the following:

![successful authentication](https://raw.githubusercontent.com/2015-10-a-and-m/win_dev_box/master/images/git_authentication.png)

Type the following command:

```bash
ruby -v
```

You should see a ruby version of 2.2.3, if you don't see anything you may need to repeat the steps above as you may have missed a step.

##Your'e done!!
That's it for now, the rest of setup will be completed in the first hour of training!

###Optional
* [ReSharper 9](http://www.jetbrains.com/resharper/download/) - I installed it to my C:\utils\resharper\9 folder.

