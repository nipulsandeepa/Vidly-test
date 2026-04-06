#!/bin/sh

echo "Waiting for MongoDB to start..."
sh ./wait-for.sh db:27017

echo "Migrating the database..."
npm run db:up || echo "No new migrations or migration step skipped."

echo "Starting the server..."
npm start