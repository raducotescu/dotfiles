function gitCleanLocalOnlyBranches() {
    git status >> /dev/null 2>&1
    if [[ $? -eq 0 ]]; then
        git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
    fi
}

alias gbc='gitCleanLocalOnlyBranches'