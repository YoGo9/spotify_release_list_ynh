## Changing the Spotify Client ID later

The Client ID is baked into the built JavaScript at install/upgrade time (Create React App inlines `REACT_APP_*` env vars at build time), so it can't be changed at runtime. To change it:

```bash
yunohost app setting spotify_release_list spotify_client_id -v <new_client_id>
yunohost app upgrade spotify_release_list -F
```

## Multiple instances

You can install this app more than once (e.g. for different Spotify accounts at different paths) since `multi_instance` is enabled — each instance needs its own Spotify app/Client ID and its own registered redirect URI.
