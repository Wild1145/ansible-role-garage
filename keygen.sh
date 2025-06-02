#!/bin/bash

echo Garage Key Generator
echo id: GK$(openssl rand -hex 12)
echo secret: $(openssl rand -hex 32)