#############################################################################
# load other files
#############################################################################

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases,  ~/.shortcuts and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions,shortcuts}; do
        [ -r "$file" ] && source "$file"
done
unset file

#############################################################################
# Prefer US English and use UTF-8
#############################################################################

export LC_ALL="en_US.UTF-8"
export LANG="en_US"

#############################################################################
# path
#############################################################################

export PATH="/Users/jaredfraser/.gem/ruby/2.0.0/bin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$(brew --prefix homebrew/php/php55)/bin:$PATH"
export APPLICATION_ENV=development
export HOMEBREW_GITHUB_API_TOKEN=c30165e067542b448c8237d2ee6919d6724608b6

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
