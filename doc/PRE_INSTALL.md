## Before you install

This app authenticates directly against Spotify's API from the visitor's browser (no server-side secret is stored). Before installing, create a Spotify app so you have a **Client ID** to give the installer:

1. Go to <https://developer.spotify.com/dashboard> and log in with your Spotify account.
2. Click **Create app**, give it any name/description.
3. Once created, open **Settings** and copy the **Client ID** — you'll be asked for it during install.
4. You don't need the Client Secret; this app never uses it.

## After you install

Spotify apps require the exact login callback URL to be registered up front:

1. Go back to your app's **Settings** on <https://developer.spotify.com/dashboard>.
2. Under **Redirect URIs**, add:

   `https://<the domain and path you installed to>/auth`

   For example, if you installed at `https://mydomain.tld/releases`, add `https://mydomain.tld/releases/auth`.
3. Save.

If you skip this step, or the URI doesn't match exactly, login will fail with an `INVALID_CLIENT` error from Spotify.
