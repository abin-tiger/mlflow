#!/bin/bash

echo "ARTIFACT_ROOT" $ARTIFACT_ROOT
echo "PORT" $PORT

mlflow server --backend-store-uri $BACKEND_URI --default-artifact-root $ARTIFACT_ROOT --host 0.0.0.0:$PORT
