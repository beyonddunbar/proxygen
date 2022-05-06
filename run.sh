#!/bin/bash
exec docker run -v $(pwd):/workdir:rw --rm -it containers.cisco.com/webexintelligence/proxygen-build /bin/bash

