# URL Link Creator
URL Link Creator is a small tool I created to generate URL files on macOS from Jamf's Self Service. When you run the policy through Self Service, it will generate a link on the Desktop with the name and URL you decided through the policy.

For safety, if a link with the same name exists on the User's desktop, the script will display a dialog warning that the user must delete it first.

# Setting up

1. Create a new script in Jamf Pro. 
2. Add the contents of the script.
3. Set up $4 parameter as the name of the URL file as it will appear on the Desktop, and $5 the URL of the link. It can be any kind of the URL schemes that macOS supports (i.e. https://, smb://, vnc://, etc.
4. Create a new Self Service policy and set up Parameters
- $4 as the URL of the link 
- $5 as the name of the link, as it will appear on the Desktop.
5. Run the policy from Self Service. If it runs properly, it should create a nice link on the user's desktop.

