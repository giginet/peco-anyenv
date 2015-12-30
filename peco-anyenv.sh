#/usr/bin/env sh
function _switch_env() {
  if [[ $fooenv == "" || $language_name == "" ]]; then
    return 0
  fi

  versions=`$fooenv versions | peco`
  if [[ $versions == "" ]]; then
    return 0
  fi

  if [[ $versions == \** ]]; then
    version_name=`echo $versions | awk '{ print $2 }'`
  else
    version_name=`echo $versions | awk '{ print $1 }'`
  fi

  mode=local
  if [[ $1 == "--global" ]]; then
    mode=global
  fi
  echo "Set ${mode} ${language_name} version to ${version_name}"
  $fooenv $mode $version_name
}

function ppyenv() {
  language_name='Python'
  fooenv='pyenv'
  _switch_env $1
}

function prbenv() {
  language_name='Ruby'
  fooenv='rbenv'
  _switch_env $1
}

function pplenv() {
  language_name='Perl'
  fooenv='plenv'
  _switch_env $1
}

function pndenv() {
  language_name='Node'
  fooenv='ndenv'
  _switch_env $1
}
