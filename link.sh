#!/bin/sh

set -ue


create_symlinks() {
		local src_dir="$HOME/dotfiles"
		local target_dir="$HOME"

		if [ ! -d "$src_dir" ]; then
				echo "Source directory $src_dir does not exist."
				return 1
		fi

		# create backup of the whole .config folder
		rm -rf ${HOME}/.config.bak
		command cp -r ${HOME}/.config{,.bak}

		if [ ! -d "$target_dir" ]; then
		mkdir -p "$target_dir"
		fi

		for item in $(ls -A ${src_dir}); do
				local src="$src_dir/$item"
				local target="$target_dir/$item"

		# skip for not dotfiles
		[ ${item} == "README.md" -o ${item} == "link.sh" ] && continue

		# skip for git
		[ `basename ${src}` == ".git" ] && continue

				if [ -L "$target" ]; then
						echo "Skipping $item, target already exists."
				else
			if [ -d "$src" ]; then
				for sub_item in $(ls -A "$src"); do
					ln -snf "$src"/${sub_item} "$target"
					echo "Create symbolic link for sub ${sub_item}"
				done
			else
				ln -snf "$src" "$target"
						echo "Created symlink for $item."
			fi
				fi
		done
}

create_symlinks
