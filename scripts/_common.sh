#!/bin/bash

# Node.js version required by react-scripts@5 / this app's build tooling
nodejs_version=20

# Build the app in $install_dir: write .env, install deps, run the CRA build,
# then drop dev-only artifacts (node_modules, src) since the app is served
# as static files from $install_dir/build afterwards.
myynh_build_app() {
	ynh_add_config --template=".env" --destination="$install_dir/.env"

	pushd "$install_dir"
		ynh_use_nodejs
		ynh_exec_warn_less npm install --legacy-peer-deps
		ynh_exec_warn_less npm run build
	popd

	ynh_secure_remove --file="$install_dir/node_modules"
	ynh_secure_remove --file="$install_dir/.npm"
	ynh_secure_remove --file="$install_dir/src"
}
