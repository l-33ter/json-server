# Json-Server Upgraded to Version 0.17.0

I thought since there hasn't been an update to the [clue/json-server](https://hub.docker.com/r/clue/json-server/) for a while I would take care of it.

## Set-Up

As sub-base I use a `DOCKER OFFICIAL IMAGE` -> `node:18-bullseye` [Image](https://hub.docker.com/_/node/). Yes, my version has a few additional programmes installed - but here will be a stripped down version.

- [ ] - Dumped Dockerfile version

### Port

I have randomly selected a port here. This can be changed at any time in the `Dockerfile` under the tab `EXPOSE`. If the port of your choice has been changed, the `docker image` must be rebuilt.

`docker build --file Dockerfile -t $USER/node_json-server . --no-cache` --> to be executed in the directory where the `dockerfile` is located.

### json-server.json

Here you can adjust the settings of the server.

```bash
json-server --help
json-server [options] <source>.

Options:
  -c, --config Path to config file
                                                  [default: "json-server.json"]
  -p, --port Set port [default: 3000]
  -H, --host Set host [default: "localhost"]
  -w, --watch Watch file(s) [boolean]
  -r, --routes Path to routes file
  -m, --middlewares Paths to middleware files [array]
  -s, --static Set static files directory
      --read-only, --ro Allow only GET requests [boolean]
      --no-cors, --nc Disable Cross-Origin Resource Sharing [boolean]
      --no-gzip, --ng Disable GZIP Content-Encoding [boolean]
  -S, --snapshots Set snapshots directory [default: "."]
  -d, --delay Add delay to responses (ms)
  -i, --id Set database id property (e.g. _id)
                                                                [default: "id"]
      --foreignKeySuffix, --fks Set foreign key suffix (e.g. _id as in post_id)
                                                                [default: "id"]
  -q, --quiet Suppress log messages from output [boolean]
  -h, --help Show help [boolean]
  -v, --version Show version [boolean]

Examples:
  json-server db.json
  json-server file.js
  json-server http://example.com/db.json

https://github.com/typicode/json-server
```

### Run.sh

Bash script to start the `json-server`.

## data

In the folder `data` is the json-`db.json` file. This serves as a data source for the server.

And if you want to replace the 'default' start page with your own, all you have to do is create another folder called `public` in the `/data` folder and create an `index.html` file in it.

## docker-compose

- [x] - Still to come. --> Done
- [ ] - Still to come, `traefik` labels

------------------

# Json-Server Upgraded to Version 0.17.0

Ich dachte mir, da es schon laenger kein Update beim [clue/json-server](https://hub.docker.com/r/clue/json-server/) gab habe ich das in die Hand genommen.

## Set-Up

Als Unterbode verwende ich ein `DOCKER OFFICIAL IMAGE` -> `node:18-bullseye` [Image](https://hub.docker.com/_/node/). Ja meine Version hat ein paar zusätzliche Programme installiert - Hier wird aber noch eine Abgespeckte-Version kommen.

- [ ] - Abgespcekte-Dockerfile-Version

### Port

Hab hier voellig zufaellig einen Port ausgewählt. Dieser kann aber jederzeit in der `Dockerfile` unter dem Reiter `EXPOSE` angepasst werden. Wurde der Port des Ihres Wuenschen angepasst, so muss das `docker image` neu ge'buildet' werden.

`docker build --file Dockerfile -t $USER/node_json-server . --no-cache` --> auszufueren im Verzeichnis in welchem die `Dockerfile` liegt.

### json-server.json

Hier koennen die Einstellungen des Servers angepasst werden.

```bash
json-server --help
json-server [options] <source>

Optionen:
  -c, --config                   Path to config file
                                                  [Standard: "json-server.json"]
  -p, --port                     Set port                       [Standard: 3000]
  -H, --host                     Set host                [Standard: "localhost"]
  -w, --watch                    Watch file(s)                         [boolean]
  -r, --routes                   Path to routes file
  -m, --middlewares              Paths to middleware files               [array]
  -s, --static                   Set static files directory
      --read-only, --ro          Allow only GET requests               [boolean]
      --no-cors, --nc            Disable Cross-Origin Resource Sharing [boolean]
      --no-gzip, --ng            Disable GZIP Content-Encoding         [boolean]
  -S, --snapshots                Set snapshots directory         [Standard: "."]
  -d, --delay                    Add delay to responses (ms)
  -i, --id                       Set database id property (e.g. _id)
                                                                [Standard: "id"]
      --foreignKeySuffix, --fks  Set foreign key suffix (e.g. _id as in post_id)
                                                                [Standard: "Id"]
  -q, --quiet                    Suppress log messages from output     [boolean]
  -h, --help                     Hilfe anzeigen                        [boolean]
  -v, --version                  Version anzeigen                      [boolean]

Beispiele:
  json-server db.json
  json-server file.js
  json-server http://example.com/db.json

https://github.com/typicode/json-server
```

### Run.sh

Bash-Script zum Starten des `json-server`.

## data

Im Ordner `data` befindet sich die json-`db.json`-Datei. Diese dient dem Server als Datenquelle.

Und sollte man/will man die 'default'-Startseite duch eine eigene ersetzen wollen, so 'muss' nur im `/data`-Ordner, nochmals einen Ordner Names `public` anlegen und in diesen eine `index.html` Datei kreieren.

## docker-compose

- [x] - Kommt noch. --> Erledigt
- [ ] - Kommt nocht, `traefik`-Labels

