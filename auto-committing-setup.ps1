# declare variables
$GitHubUsername='laguilera03'
$PracticeRepoDir="$PSScriptRoot"
$CommitMessage='auto committed from auto-committing-setup.ps1!'

# fork and clone this repo into the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir/powershell-practice"

# TODO: complete steps 5-9
# Copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
cp "$PSCommandPath" "powershell-practice/auto-committing-setup.ps1"

# Change into the cloned directory ($PracticeRepoDir)
cd $PracticeRepoDir/powershell-practice

# Add the new script file in the cloned directory to git staging
git add .

# Commit the changes to the repo using the message variable ($CommitMessage)
git commit -m "$CommitMessage"

# Push the local git history back to your forked repo
git push origin master