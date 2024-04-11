#!/bin/sh

echo "Running DB Migration"
npx prisma migrate dev
