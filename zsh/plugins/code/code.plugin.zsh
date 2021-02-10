# Quickly access your ~/code directory
#  Setting $CODE_HOME will use that instead of ~/code
function c(){
  local code_path=${CODE_HOME}

  if [[ "$code_path" == "" ]]; then
    code_path="$HOME/code"
  fi

  if [ -d "$code_path/$1" ]; then
    cd "$code_path/$1"
  else
    (>&2 echo "no such file or directory: $code_path/$1")
  fi
}

dotenv () {
  set -a
  [ -f "$PWD/.env" ] && source "$PWD/.env"
  set +a
}

githubview () {
  local repo=$1
  [[ ! $repo =~ "https://*" ]] && repo="https://github.com/${repo}"
  local temp="$(mktemp -d)"
  git clone --single-branch "${repo}" "${temp}"
  code --wait -n "${temp}"
  rm -rf "${temp}"
}
