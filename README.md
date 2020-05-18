# rubulex-docker

This is a containerized version of [Rubulex](https://github.com/ofeldt/rubulex) ready for deployment locally or to a VPS.  If you want to make it a "service" so it will auto-restart, there is a provided systemd service file you can install.

## Why?

Because Rubulex is an awesome tool if you don't like sending your code snippets to closed-source backends like [Rubular](https://rubular.com), and it makes for simple deployment to a VPS and adds some security.

## Running the image

You can use the pre-built version if you like (note I use `podman` but `podman` and `docker` are interchangeable): 

```bash
sudo podman run -d --name rubulex freedomben/rubulex
```

To run in the foreground:

```bash
sudo podman run --rm -it --name rubulex freedomben/rubulex
```

To build yourself:

```bash
sudo podman build -t rubulex .
```

## Installing systemd service file

```bash
sudo cp rubulex.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now rubulex
```

## Missing stuff

The current solution doesn't use HTTPS, which is a big failure for deploying it to a VPS.  I'm going to add integration with nginx/lets encrypt soon.  Stay tuned.
