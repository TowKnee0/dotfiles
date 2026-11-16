# Base & Status
alias g="git"
alias gs="git status -sb"          # Short status with branch tracking info
alias gd="git diff"                # Unstaged changes
alias gds="git diff --staged"      # Staged changes ready to commit

# Branching & Switching
alias gb="git branch"
alias gco="git checkout"           # Or use `git switch`
alias gcb="git checkout -b"        # Create and switch to new branch
alias gc-="git checkout -"         # Toggle back to previous branch

# Staging & Committing
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"  # Fold staged changes into last commit

# Syncing (Pull / Push / Fetch)
alias gf="git fetch --prune"       # Fetch and clean deleted remote branch refs
alias gl="git pull --rebase"
alias gp="git push"
alias gpf="git push --force-with-lease"

# History & Stash
alias glog="git log --oneline --graph --decorate -n 20"
alias gst="git stash"
alias gstp="git stash pop"