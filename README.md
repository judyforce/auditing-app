# How to get started: 

## Clone repo 

$ mkdir auditing-app
$ cd auditing-app
$ git clone https://github.com/judyforce/auditing-app

## Create Scratch Org with the alias of auditing-app

$ sfdx force:org:create -f config/project-scratch-def.json -a AuditApp

## Push Code into the Scratch Org

$ sfdx force:source:push 

## Changing Permission Set 

$ sfdx force:org:open -u AuditApp

From Setup, enter Permission Sets in the Quick Find box, then click Permission Sets.
Click New and enter the details:

Label: AuditingApp
API Name: AuditingApp
Description: Grants access to the Auditing App
Click Save.
Under Apps, click Object Settings.
Click Github Auditing.
Click Edit.
For Tab Settings, select both Available and Visible, then click Save.
Next, assign the permission set to yourself. 

Click Manage Assignments, then Add Assignments.
Select the checkbox next to the scratch org username (User, User), click Assign, then click Done.
User User is the default full name given to the system administrator in a scratch org. Go ahead and change it in Setup if you want a more exciting name.  

## Pull Changes

$ sfdx force:source:pull

## Open Auditing App Tab from Org

$ sfdx force:org:open -u AuditApp
Type in the search bar, "Github Auditing"


## At the moment data isn't filtered automatically. You insert data by calling GithubAPI.main() in an anonymous window. From there, you can use the search component to show the results of a search term 
