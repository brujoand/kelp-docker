# kelp-docker
A docker container for kelp

The produced container is based on the latest Alpine release and contains the
kelp binary for the relevant release. Builds are triggered by publishing a kelp
tag to this repo, and executed by docker hub. To fetch the image of a tag simply
run:
```bash
$ docker run -it brujoand/kelp-docker:v1.11.0

  __        _______ _     ____ ___  __  __ _____    _____ ___      _  _______ _     ____
  \ \      / / ____| |   / ___/ _ \|  \/  | ____|  |_   _/ _ \    | |/ / ____| |   |  _ \
   \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|      | || | | |   | ' /|  _| | |   | |_) |
    \ V  V / | |___| |__| |__| |_| | |  | | |___     | || |_| |   | . \| |___| |___|  __/
     \_/\_/  |_____|_____\____\___/|_|  |_|_____|    |_| \___/    |_|\_\_____|_____|_|
                                      cli=master:v1.11.0
                                      gui=v1.0.0-rc2

Kelp is a free and open-source trading bot for the Stellar universal marketplace (https://stellar.org).

Learn more about Stellar : https://www.stellar.org
Learn more about Kelp    : https://github.com/stellar/kelp

Usage:
  kelp [flags]
  kelp [command]

Examples:
  kelp trade --botConf ./path/trader.cfg --strategy buysell --stratConf ./path/buysell.cfg
  kelp trade --botConf ./path/trader.cfg --strategy buysell --stratConf ./path/buysell.cfg --sim
  kelp trade --help

Available Commands:
  exchanges   Lists the available exchange integrations
  help        Help about any command
  server      Serves the Kelp GUI
  strategies  Lists the available strategies
  trade       Trades against the Stellar universal marketplace using the specified strategy
  version     Version and build information

Flags:
      --ccxt-rest-url string   URL to use for the CCXT-rest API. Takes precendence over the CCXT_REST_URL param set in the botConfg file for the trade command and passed as a parameter into the Kelp subprocesses started by the GUI (default URL is https://localhost:3000)
  -h, --help                   help for kelp

Use "kelp [command] --help" for more information about a command.
```
