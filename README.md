# phonegap-box #

A **vagrant** box provisioned with the PhoneGap development environment for the **android** platform. **All you have to do** is to clone the repository, fire `vagrant up` and add your Android device to VirtualBox. After that, you are ready to begin your PhoneGap project.

## Installation ##

### 1) Download and install the box ###

1. install vagrant http://docs.vagrantup.com/v2/installation/index.html
2. run `git clone git@github.com:vasconcelloslf/phonegap-box.git`
3. run `cd phonegap-box`
3. run `vagrant up`

#### Note for Windows hosts:

If you're using Windows as a host, then you will have problems trying to use the shared folder to store projects. VirtualBox, NTFS, and symlinks don't work well together. To get around this issue:

1. Open the `Vagrantfile` and uncomment the line under the comment "Enable symlinks in Windows."
2. Open `secpol.msc` and navigate to `Security Settings > Local Policies > User Rights Assignment`
3. Open the `Create Symbolic Links` and add the Administrators group if it isn't already there.
4. Open your command prompt with `Run as administrator` 
5. Run `vagrant up` to create and initialize the virtual machine
6. Run `vagrant ssh` to connect and work in the machine as usual.

You must use the elevated command prompt to work with the machine. Running `vagrant up` from a non-elevated command prompt causes the machine to be unable to sync the share and see items created from the Windows side.

### 2) Configure your device on the box ###

The box doesn't have a UI, so there is no emulator, you can only install on the device. In order to do so, you need to configure the VirtualBox to see your device through a USB port:

0. Plug the device
1. VirtualBox -> PhoneGap-box -> Settings -> Ports -> USB -> Add Filter -> (Select your android device)
2. (your device) Settings -> Developer Options -> USB Debugging (remark if it already marked)
3. (your device) A prompt to allow the virtual machine will appear. Click ok.
4. Plug and unplug the USB device.
5. (vagrant) run `adb devices`. You now should see your device on the list. 

In order to resolve the `?????? no permissions` problem:

* sudo -s
* adb kill-server
* adb start-server
* adb devices

### 3) Create and run your phonegap project ###

1. run `vagrant ssh`
2. run `cd /vagrant`
3. run `phonegap create folder-name -n ProjectName`
4. run `cd folder-name`
5. run `phonegap run android`

**That's it.**

## About ##

This box will install and configure the following:

* Vim
* Git
* Node.js
* Npm
* Java JRE
* Java SDK
* Android ADT*
 
## Me

[luisvasconcellos.com](http://www.luisvasconcellos.com)

Feel free to talk to me about anything related to this project.
