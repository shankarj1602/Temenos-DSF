
#!/bin/bash


project_directory="/home/t24user/workspace/Democarloan-4.1.0.csv"

data_folder="$project_directory/src/data"

#Navigate to project directory
cd "$project_directory" 

# Check if there are changes in the data folder
if [[ $(git status -s $data_folder) ]]
   # Changes detected, proceed with commit
   echo "Changes detected in $data_folder. Committing to Git."

   # Add changes
   git add "$data_folder"

   # Commit changes
   git commit -m "Update data folder"

   # Push changes to the remote repository (assuming 'master' branch)
   git push origin master

   # No changes detected
   echo "No changes in $data_folder. Nothing to commit."
fi
