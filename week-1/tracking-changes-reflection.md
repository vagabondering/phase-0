
    #1. How does tracking and adding changes make developers' lives easier?
    It keeps copies of old work so if something brakes, it saves time and work to revert to older version. It also allows the developer compare and see changes of improvements or faults.

    #2. What is a commit?
    Commit is to save the changes into the repository and creating a backed up version that you can revert to.

    #3. What are the best practices for commit messages?
    To be as detailed as you can, stating what changes you did and why.

    #4. What does the HEAD^ argument mean?
    HEAD is the commit you're currently on.

    #5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
    1. Make and commit changes. Make sure to pull from master first to be synced. Then git checkout feature branch and file, git commit when done.
    2. Push to github. Before pushing, pull from master again to make sure it's synced and merge it with the feature branch.
    3. Merging. Pull request to have it merged with the master branch.

    #6. Write a handy cheatsheet of the commands you need to commit your changes?
    - git check out -b branch-name
    - git status
    - git checkout file_name
    - git commit -m "changes made" file_name
    - git add file_name

    #7. What is a pull request and how do you create and merge one?
    Pull request is the process of having your feature branch merged with the master branch.
    First push the branch onto github on the shell locally using $ git push origin branch-name.
    Then in github, go to the repository and click on "compare & pull request". Set the base branch to be master and the feature branch as compare and the click "Create" pull request" Check the changes to be added and then "Merge pull request" to merge.

    #8. Why are pull requests preferred when working with teams?
    It's a way of controlling what gets merged with the master branch so having the requests allow the changes to be carefully reviewed to make sure it doesn't break anything before merging.