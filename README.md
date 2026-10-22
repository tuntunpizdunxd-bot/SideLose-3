# sideLose <3 — SideStore Anisette v3

Self-hosted Anisette server built from [Dadoum/anisette-v3-server](https://github.com/Dadoum/anisette-v3-server), which supports SideStore's v3 protocol (and legacy v1). The Render entry point reads the platform's `PORT` variable.

## Deploy on Render

1. Push this folder's contents to a GitHub repository named `sideLose` (or fork the upstream repository and apply these files).
2. In Render, choose **New → Blueprint** and connect that repository. Render will read `render.yaml` and create the web service `sidelose`. Render's service identifier is lowercase; SideStore will show the display name **sideLose <3** from `servers.json`.
3. Wait until the service is live. Its address will look like `https://sidelose.onrender.com` (Render may add a suffix if that name is taken).
4. Replace the placeholder in `servers.json` with the exact service address. Host the edited JSON at a public HTTPS URL, for example with GitHub Pages.
5. In SideStore, open **Settings → Anisette Servers**, set the server-list URL to the hosted `servers.json`, tap **Refresh Servers**, then select **sideLose <3**.

## Run locally with Docker

```sh
docker build -t sidelose .
docker run --rm -p 6969:6969 sidelose
```

Open `http://localhost:6969/` to check that the service responds. The first startup downloads Apple library files and provisions the server, so it needs outbound internet access.

## Notes

- Use SideStore 0.4.0 or newer and select an Anisette v3 server.
- Render's free service can sleep when idle; the first request afterward may be slow. For reliable always-on use, deploy on an always-on host and keep `/home/Alcoholic/.config/anisette-v3` persistent across restarts.
- This project is a protocol service; it does not accept or store your Apple ID password. Keep the server address private if you do not intend to share it.
