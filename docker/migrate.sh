#!/bin/sh
cd /app
echo "Running DB Migration"
npx prisma migrate dev
