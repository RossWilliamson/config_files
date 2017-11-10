set -x LESSOPEN "| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
set -x LESS " -RN"
set -gx PATH /home/rossw/anaconda/bin $PATH
source (conda info --root)/bin/conda.fish
activate py3k
