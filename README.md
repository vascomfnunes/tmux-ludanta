# Ludanta

Ludanta (Esperanto for playing) is a simple plugin to display what's currently playing on a MPD (Music Player Daemon) server.

Makes use of MPC to obtain the relevant metadata.

![https://github.com/vascomfnunes/tmux-ludanta/blob/main/img/shot.png](https://github.com/vascomfnunes/tmux-ludanta/blob/main/img/shot.png)

## Requirements

- [MPD](https://www.musicpd.org/clients/mpc/)
- [MPC](https://www.musicpd.org/clients/mpc/)
- Awk

## Install

If using [TPM - Tmux Plugin Manager](https://github.com/tmux-plugins/tpm), add the plugin to your `~/.tmux.conf`:

```tmux
set -g @plugin 'vascomfnunes/tmux-ludanta'
```

Load the plugin with `prefix + I`.

## Usage

You can add `#{mpd_now_playing}` to your status line configuration.

For example:

```tmux
set -g status-right "#{mpd_now_playing}"
```
## License

This plugin is licensed under the MIT license. For more information please refer
to the [LICENSE](https://github.com/vascomfnunes/tmux-clima/blob/main/LICENSE) file.
