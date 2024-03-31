#!/bin/sh

# Stop on any error
set -e

# Create tables
sqlite3 /tmp/db.sqlite3 "CREATE TABLE IF NOT EXISTS templates (id TEXT PRIMARY KEY);"
sqlite3 /tmp/db.sqlite3 "CREATE TABLE IF NOT EXISTS files (id TEXT PRIMARY KEY, path TEXT NOT NULL, content TEXT NOT NULL, user_id TEXT NOT NULL, initialization_vector TEXT NOT NULL);"
sqlite3 /tmp/db.sqlite3 "CREATE TABLE IF NOT EXISTS template_files (id TEXT PRIMARY KEY, file_id TEXT NOT NULL, template_id TEXT NOT NULL);"

# Insert data
sqlite3 /tmp/db.sqlite3 "INSERT INTO templates (id) VALUES ('0939865eee0fff95518bb8f0ac64cafe5d9d04429b51d55a82d3a42ea5da5b1f');"
sqlite3 /tmp/db.sqlite3 "INSERT INTO files (id, path, content, user_id, initialization_vector) VALUES ('474dc715fcef9838628de248b91ad845', '/foo/bar.txt', '474dc715fcef9838628de248b91ad845', '0939865eee0fff95518bb8f0ac64cafe5d9d04429b51d55a82d3a42ea5da5b1f', '391827ead4c1a7fdad2dd9256d01a57a');"
sqlite3 /tmp/db.sqlite3 "INSERT INTO template_files (id, file_id, template_id) VALUES ('0939865eee0fff95518bb8f0ac64cafe5d9d04429b51d55a82d3a42ea5da5b1f', '474dc715fcef9838628de248b91ad845', '0939865eee0fff95518bb8f0ac64cafe5d9d04429b51d55a82d3a42ea5da5b1f');"
