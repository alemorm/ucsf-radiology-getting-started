# Hugo Version
# Hugo Static Site Generator v0.72.0-8A7EF3CF linux/amd64

# Get SHA for latest commit to display in the footer 
export GIT_COMMIT_SHA=`git rev-parse --verify HEAD` 
export GIT_COMMIT_SHA_SHORT=`git rev-parse --short HEAD`

# Build site
hugo

# Commit all files with specified input message
# git commit -am "$@"

# Push to remote
# git push
