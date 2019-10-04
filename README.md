# file-overwrite-bug
the flywheel cli file overwrite bug

1. Ensure that flywheel CLI is installed on your machine
2. Clone this repository and navigate to its directory
3. run ` fw gear create `
4. enter an arbitrary name and ID
5. for docker image, select "other" and enter ` dbp2123/overwrite-bug:1.0 `
6. You will now recieve the message:

` File "This_File_Is_In_The_Docker.txt" already exists in this folder and in the gear. `
` Replace local file? (yes/no):  `

7. Enter "no", as in "No do not replace this file, it exists there and you should leave it there and not change it in any way"
8. Upon completion, view the folder and notice that "This_File_Is_In_The_Docker.txt" is missing.  However, "This_File_Is_NOT_In_The_Docker copy.txt" is still present, indicating that this problem only exists if a file is present in the docker image `/flywheel/v0` folder.
