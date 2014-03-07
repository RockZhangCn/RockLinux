#!/bin/bash
echo -n "[ROCK]"`date +"[%Y-%m-%d %H:%M:%S]"`
