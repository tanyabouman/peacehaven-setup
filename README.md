# Peace Haven Website Setup

This repository is the technical setup for the Peace Haven website.
Many of the content details are removed.
The site was initially a server-rendered PHP site,
but I switched to a static site to make it
easy to get free hosting.
The current static site uses the Hugo static site generator.

Live site: [peacehaven.ca](https://peacehaven.ca)

## Hugo Development

The Nix shell provides all the necessary dependencies.

    nix-shell
    yarn

Or you can install `yarn` and `git` yourself.

Run a development server:

    yarn start

Build the site, and put the output into the `public` directory.

    hugo -d public

## Lighthouse Audit

Install the dependencies:

    nix-shell
    yarn

Run the check, either on the locally running site, or on a deployment:

    yarn lighthouse http://localhost:1313/
    yarn lighthouse https://peacehaven.ca/

Lighthouse scores on the deployment, to track progress. 2024-01-04:
- Performance: 90
- Accessibility: 89
- Best Practices: 92
- SEO: 73
