#!/bin/bash

screen -dmS pcbpe nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpe \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpe" --producer-name pcbpe \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6CE8NmWwpcV6ePDiE4vzhyZfpYvmrtugumEpTYauQUMVLT1ZYP=KEY:5J31hi73ZfRDJv1MTVoqdGPh4J9e8Nzt5szdxn6zLrUnwGwyd2j"

#screen -dmS pcbpq 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpq \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpq" --producer-name pcbpq \
    --signature-provider "EOS5dt9CWCKM1scrWpFsRbzY71Up9UYFmJs1ySFKLJDGdYJmgEH3f=KEY:5K4GSGP2r1Yu3RqmPZPF8Hv6Zrv2YWsUEoCqwwHxKsZavz2tChg"
