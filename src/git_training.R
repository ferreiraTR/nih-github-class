#### Working with Git in Rstudio - NIH Library ####
#### Mar-02-2023 ####
system("which git")
system("git --version")
system("R --version")
system("git config --global user.name 'ferreiraTR'")
system("git config --global user.email 'tiago_rf@yahoo.com'")
system("git config --global --list")

install.packages("usethis")
library(usethis) #alternatively use_git_config instead of system("git config")

create_github_token()
#30 days before expiration is good. Generate token
# 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
gitcreds::gitcreds_set() #to enter token
#create repository at Github and take the URL and 
#Can create tokens using web browser as well: After signing in online, click Settings on the dropdown menu, Developer Setting -> Tokens (classic) -> Generate New Token
#Still online Create a new repository -> Repository name -> R gitignore -> License He uses MIT License -> copy repository URL
#Create New Project -> Version Control -> Git -> Paste repository URL -> Create
#Can use Git tab on the top right of Rstudio to keep an eye on changes 

#Always use Pull on the Git tab before starting work and making changes, then commit, then push

#Click Commit -> Select what is going to be push -> Always insert commit changes text to explain why changing -> CLick Push to upload the changes to the online repository
#We do not want to commit the .Rproj file

do_math <- (6+6)
do_math

#to change git origin URL in the current project:
system("git remote rm origin")
system("git remote add origin https://github.com/ferreiraTR/nih-github-class.git")
#can be checked by going Tools -> Project Options -> Git/SVN

#test
