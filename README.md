# The real's Hosting Guide

By default, only a survival server is created; however, numerous servers are possible within the `servers/` sub directory.

Each server should have a proper `start.sh` script that
- starts the server in a docker environment
- ensures the server will shut off if there are no active players after 10 minutes
