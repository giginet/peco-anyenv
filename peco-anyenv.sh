#/usr/bin/env sh
function switch_env() {
    if [[ $fooenv == "" || $language_name == "" ]]; then
      exit
    fi

    venvs=`$fooenv versions | peco`
    venv0=`echo $venvs | cut -d' ' -f1`
    venv1=`echo $venvs | cut -d' ' -f2`
    if [[ $venv0 == "*" ]]; then
      venv_name=$venv1
    else
      venv_name=`echo $venvs| awk '{ print $1 }'`
    fi

    mode=local
    if [[ $1 == "--global" ]]; then
      mode=global
    fi
    echo "Set ${mode} ${language_name} version to ${venv_name}"
    $fooenv $mode $venv_name
}

function ppyenv() {
    language_name='Python'
    fooenv='pyenv'
    switch_env
}

function prbenv() {
    language_name='Ruby'
    fooenv='rbenv'
    switch_env
}

function ppyenv() {
    language_name='Perl'
    fooenv='plenv'
    switch_env
}

function ppyenv() {
    language_name='Node'
    fooenv='ndenv'
    switch_env
}
