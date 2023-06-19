#!/bin/sh

# Run this script from your workspace folder which was created by the init command.
# It will then reset the env variable that enables initial scanning of your data folder. 

echo "Reset environment variable AZD_PREPDOCS_RAN to 'false' for a new scan of the folder data"
azd env set AZD_PREPDOCS_RAN "false"

echo "Reading environmental variables..."
azd env get-values

echo "Starting rescan of all dokuments in the folder data..."
./scripts/prepdocs.sh

echo "Finisched rescan folder data."