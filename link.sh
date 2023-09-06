#!/bin/sh
set -ue

link_to_homedir() {
	command echo "backup old dotfiles..."
	if [ ! -d "$HOME/dotfiles.bak" ];then
		command echo "$HOME/.dotbackup not found. Auto Make it"
    		command mkdir "$HOME/dotfiles.bak"
  	fi

	for f in ${HOME}/dotfiles/.??*; do
		local fname=`basename ${f}`

		# skip for git
      		[[ ${fname} == ".git" ]] && continue

		# make backup
      		if [[ -e "${HOME}/${fname}" ]];then
			command echo making buckup ${HOME}/${fname}
        		command mv "${HOME}/${fname}" "${HOME}/dotfiles.bak"
      		fi

      		command ln -snf $f $HOME
    	done
}


link_to_homedir
command echo -e "\e[1;36m Install completed!!!! \e[m"
