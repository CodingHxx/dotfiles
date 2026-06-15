fish_add_path ~/.local/bin
fastfetch

# pnpm
set -gx PNPM_HOME "/home/aaki/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

fish_add_path /home/aaki/.spicetify
