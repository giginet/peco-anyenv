#/usr/bin/env sh
function _switch_env() {
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
    _switch_env
}

function prbenv() {
    language_name='Ruby'
    fooenv='rbenv'
    _switch_env
}

function pplenv() {
    language_name='Perl'
    fooenv='plenv'
    _switch_env
}

function pndenv() {
    language_name='Node'
    fooenv='ndenv'
    _switch_env
}
