#!/bin/bash
security find-certificate -a -p | while openssl x509 -noout -subject -issuer 2>/dev/null; do : ; done | awk '/CN=MS-Organization-Access/{print p}{p=$0}' | \
awk '{sub(/subject= \/CN=/,"")}1'
