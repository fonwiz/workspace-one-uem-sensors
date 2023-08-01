#!/bin/bash
security find-certificate -a -Z | grep "MS-ORGANIZATION-ACCESS" | wc -l
