#!/bin/sh
set -e

echo "⏳ Running database migrations..."
node lib/db/migrate.mjs

echo "✅ Migrations complete. Starting server..."
exec node server.js
