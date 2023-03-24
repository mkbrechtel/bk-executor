#!/usr/bin/elvish

#var config = (cat | from-json)
var config = (cat config.example.json | from-json)
put $config

var request_url = $E:BK_EXPORTER_URL'/retrieve-query?query=Patient&query-format=FHIR_QUERY&output-format=EXCEL'

echo $request_url
# start importer
curl --location --request GET $request_url --header 'x-api-key: notsostrong' --header 'Content-Type: application/xml' --data '' -o /tmp/patient.xlsx


# TODO: loop through multiple workflows
# 


# start analysis
echo $config['orchestrator']['stdin'] | docker run --network none -i -e INPUT_PATH=/srv/input -e OUTPUT_PATH=/srv/output $config['orchestrator']['image'] $config['orchestrator']['command']
