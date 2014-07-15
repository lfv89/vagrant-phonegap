echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Installing Android SDK API 19"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

echo PATH $PATH
[ -f ~/.profile ] || touch ~/.profile
[ -f ~/.bash_profile ] || touch ~/.bash_profile
[ -f ~/.bashrc ] || touch ~/.bashrc
grep 'PATH=/usr/local/bin' ~/.profile || echo 'export PATH=/usr/local/bin:$PATH' | tee -a ~/.profile
grep 'PATH=/usr/local/bin' ~/.bash_profile || echo 'export PATH=/usr/local/bin:$PATH' | tee -a ~/.bash_profile
grep 'PATH=/usr/local/bin' ~/.bashrc || echo 'export PATH=/usr/local/bin:$PATH' | tee -a ~/.bashrc
. ~/.profile
. ~/.bash_profile
. ~/.bashrc
echo PATH $PATH

echo 'y' | android update sdk --no-ui -t 3
