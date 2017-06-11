SANMonitor is web based interface to monitor san switches.

- periodicaly retrieve port statistics from the switches
- send statistics to graphite
- send log to graylog
- send a global status to nagios.
- aknowledge the warnings
- display current errors
- display history
- reset all errors

## data
- current statistics
- aknowledging log
- Nagios History

## How to run the frontend for developement

- install nodejs
- install elm

```
$ cd frontend
$ elm-reactor
Listening on http://localhost:8000
```
