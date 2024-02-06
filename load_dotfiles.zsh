#!/bin/zsh

# Function to crawl directory for files
load_dotfiles() {
    local dir="$1"
    local files=("$dir"/*)

    for file in "${files[@]}"; do
        if [[ -f "$file" ]]; then
            info "Sourcing file: $file"
            source "$file"
        fi
    done
}

# Main function
main() {
    local directory="$1"

    if [[ -d "$directory" ]]; then
        echo "Loading config files from: $directory"
        load_dotfiles "$directory"
    else
        echo "Error: Not a valid directory"
        return 1
    fi
}

# Call main function with the provided directory
main "$@"
