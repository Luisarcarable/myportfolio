#!/usr/bin/env bash
# make_zip.sh
# Creates project files and zips them into deploy.zip ready for Netlify Drop.
# Run: chmod +x make_zip.sh && ./make_zip.sh
set -e

# Create project directory
TMPDIR="luisa-portfolio-temp"
rm -rf "$TMPDIR"
mkdir -p "$TMPDIR/assets"

# Write files
cat > "$TMPDIR/index.html" <<'EOF'
(PLACEHOLDER) -- The actual index.html content is provided in the index.html file in this repo.
EOF

cat > "$TMPDIR/styles.css" <<'EOF'
(PLACEHOLDER) -- The actual styles.css content is provided in the styles.css file in this repo.
EOF

cat > "$TMPDIR/script.js" <<'EOF'
(PLACEHOLDER) -- The actual script.js content is provided in the script.js file in this repo.
EOF

# Add placeholder resume file (replace with a real PDF if available)
cat > "$TMPDIR/Luisa-Carable-Resume.txt" <<'EOF'
Luisa Carable - Resume placeholder
Replace this file with your real PDF named: Luisa-Carable-Resume.pdf
EOF

# Add small assets
cat > "$TMPDIR/assets/avatar.svg" <<'EOF'
(PLACEHOLDER) -- The actual avatar.svg content is provided in the assets/avatar.svg file in this repo.
EOF

# Copy actual files if this script is run from same folder as these files:
# This section tries to copy real files if they exist next to this script.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -f "$SCRIPT_DIR/index.html" ]; then cp "$SCRIPT_DIR/index.html" "$TMPDIR/"; fi
if [ -f "$SCRIPT_DIR/styles.css" ]; then cp "$SCRIPT_DIR/styles.css" "$TMPDIR/"; fi
if [ -f "$SCRIPT_DIR/script.js" ]; then cp "$SCRIPT_DIR/script.js" "$TMPDIR/"; fi
if [ -f "$SCRIPT_DIR/assets/avatar.svg" ]; then mkdir -p "$TMPDIR/assets"; cp "$SCRIPT_DIR/assets/avatar.svg" "$TMPDIR/assets/"; fi
if [ -f "$SCRIPT_DIR/Luisa-Carable-Resume.pdf" ]; then cp "$SCRIPT_DIR/Luisa-Carable-Resume.pdf" "$TMPDIR/"; fi

# Create zip
ZIPNAME="deploy.zip"
rm -f "$ZIPNAME"
cd "$TMPDIR"
zip -r ../"$ZIPNAME" ./* > /dev/null
cd ..
echo "Created $ZIPNAME — ready to upload to Netlify Drop (https://app.netlify.com/drop)"
echo "Zip contents:"
unzip -l "$ZIPNAME"