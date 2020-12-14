# osrm-builder

Builds and processes OSRM PBFs then uploads them to cloud storage

Create a service account for Google Drive and give it access to a team drive exclusively used for OSRM files.

Mount the service account credentials to `/osrm-upload.json` in the container.

Make sure you provide the following environment variables:

## `PBF_URL`

The url for our PBF. For example, http://download.geofabrik.de/europe/germany/berlin-latest.osm.pbf

## `PROFILE`

The LUA profile to use for extracting the dataset. Can be `car`, `foot` or `bike`.

## `TEAM_DRIVE`

The team drive you want to upload the files to
