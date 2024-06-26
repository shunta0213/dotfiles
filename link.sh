#!/bin/sh

set -ue


create_symlinks() {
		local src_dir="$HOME/dotfiles"
		local target_dir="$HOME"

		if [ ! -d "$src_dir" ]; then
			echo "Source directory $src_dir does not exist."
			return 1
		fi

		# Create backup of the whole .config folder
		rm -rf ${HOME}/.config.bak
		command cp -r ${HOME}/.config ${HOME}/.config.bak

		if [ ! -d "$target_dir" ]; then
			mkdir -p "$target_dir"
		fi

		for item in $(ls -A ${src_dir}); do
			local src="$src_dir/$item"
			local target="$target_dir/$item"

			# skip not dotfiles
			[ ${item} == "README.md" -o ${item} == "link.sh" ] && continue

			# skip for git
			[ `basename ${src}` == ".git" ] && continue

			if [ -L "$target" ]; then
				echo "Skipping $item, target already exists."
			else
				if [ -d "$src" ]; then
					for sub_item in $(ls -A "$src"); do
						ln -snf "$src"/${sub_item} "$target"
					done
				else
					ln -snf "$src" "$target"
				fi
			fi
		done
}

create_symlinks
