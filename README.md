# Infrastructure

Server provisioning recipes using [itamae](https://github.com/ryotarai/itamae)

## How to deploy

```bash
# dry-run for sakura
$ bundle exec rake sakura:dry-run

# apply for sakura
$ bundle exec rake sakura
```

## Machines
### conoha

| Item  | Spec     |
|:-----|:----------|
| VPS Vendor | ConoHa |
| OS | CentOS release 6.5 (Final) |
| Plan | 930 Yen / Month |
| Memory | 1GB |
| CPU | 2 Core |
| Storage | HDD 100GB |

### sakura

| Item  | Spec     |
|:-----|:----------|
| VPS Vendor | Sakura Internet |
| OS | CentOS release 6.5 (Final) |
| Plan | 900 Yen / Month |
| Memory | 1GB |
| CPU | 2 Core |
| Storage | HDD 100GB |

### excloud

| Item | Spec |
|:-----|:-----|
| VPS Vendor | EX-CLOUD |
| OS | CentOS release 5.8 (Final) |
| Plan | 0 Yen (until 2015/11/30) |
| Memory | 1GB |
| CPU | 8 Core (Shared) |
| Storage | SSD 30GB |

## Copyright

Copyright 2014 Takashi Kokubun
