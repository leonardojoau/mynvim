## Key Maps
- `<leader>` = `<Space>`

# Plugins

## OSC52

The `osc52` plugin uses escape sequences to copy text directly to the system clipboard, even in terminal multiplexers like tmux or over SSH.

### Key Mappings for OSC52

- **Normal Mode:**
  - `<leader>c`: Start operator-pending mode for copying. Use motions to select what to copy (e.g., `w` for word, `j` for current and next line).
  - `<leader>cc`: Copy the entire current line to the clipboard.

- **Visual Mode:**
  - `<leader>c`: Copy the visually selected text to the clipboard.

