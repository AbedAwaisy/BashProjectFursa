# Greet the user
echo "Hello $(whoami)"

# Define environment variable
export COURSE_ID="DevOpsFursa"

# Check permissions of .token file
if [ -f ~/.token ]; then
    if [ $(stat -c "%a" ~/.token) != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi

# Change umask
umask 007

# Add to PATH
export PATH="$PATH:/home/$(whoami)/usercommands"

# Print current date in ISO 8601 format
echo "The current date is: $(date -u +"%Y-%m-%dT%H:%M:%S+00:00")"

# Define alias for listing .txt files
alias ltxt='ls *.txt'

# Create or clean the ~/tmp directory
mkdir -p ~/tmp
rm -rf ~/tmp/*

# Kill process on port 8080 if exists
fuser -k 8080/tcp