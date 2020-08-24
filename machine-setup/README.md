## Step 1 : Sign in to your Google Account 

## Step 2: Sign in to your Bitbucket account 

## Step 3: Connect Your SSH key to Bitbucket 

Intstructions from here: 
https://confluence.atlassian.com/bitbucket/set-up-an-ssh-key-728138079.html

or 

Copy into terminal and Run 
```
ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
ls ~/.ssh 
eval `ssh-agent` 
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub # copies into your current clipboard
```

In bitbucket.com, goto click on your user icon in the bottom left and goto your bitbucket settings

On the left navigation, click on SSH Keys, 

Click Add key

Label your key and paste in you public key from the pbcopy command 

In Terminal, run 
```
ssh -T git@bitbucket.org 
```
you should see a message that says you can connect to bitbucket

## Step 4: Setup work directory
Prereq: If you're on Mac, you may be prompted to install XCode. If that's the case, just go through the instructions provided and then run step 4 again. 

Run 
```
git clone git@bitbucket.org:eiq_mobility/eiq-machine-setup.git && cd eiq-machine-setup && sh setup.sh && cd .. && rm -rf eiq-machine-setup
```

Note: if you are getting access denied, redo Step 3

## Step 5: Setup GCloud

Run 
```
gcloud auth login
```
Go through the web authentication process

Then run
```
gcloud init
```
to set up your machine with our eIQ project. 
For configurations, choose rational-autumn-234302 and your own email. 