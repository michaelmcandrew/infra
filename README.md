This repository holds code to run Third Sector Design's server infrastructure, and documentation on how to use that code (see the docs directory).

Reliable, automated, well documented infrastructure is key to our work, hence the effort put into this repository.

Our main server provider is AWS and our infrastructure is AWS, though design decisions have been take to ensure that we aren't unecessarily locked into AWS). We use a couple of other providers (e.g. digital ocean, linode and bytemark) to ensure continuity in the unlikely event that AWS becomes unavailable for a significant amount of time.

We use ansible for provisioning, deployment and orchestration of our infrastrcuture and services.
