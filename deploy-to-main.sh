#!/bin/bash

# Merge develop into main
git checkout main
git merge --no-ff develop

# Push changes to main
git push origin main