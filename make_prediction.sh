#!/usr/bin/env bash

PORT=8000
#Node_port
PORTFORWARDING=30039
echo "Port: $PORT"

# POST method predict
curl -d '{
   "CHAS":{
      "0":0
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":296.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
   #   -X POST http://localhost:$PORT/predict
   -X POST http://192.168.49.2:$PORTFORWARDING/predict
