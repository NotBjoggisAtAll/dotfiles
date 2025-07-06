#!/usr/bin/env fish

set -l target_dir "/etc/1password"
set -l target_file "$target_dir/custom_allowed_browsers"
set -l browser_binary "vivaldi-bin"

if not test -d "$target_dir"
    sudo mkdir -p "$target_dir"
    if test $status -ne 0
        exit 1
    end
end

echo "$browser_binary" | sudo tee "$target_file" > /dev/null
if test $status -ne 0
    exit 1
end
