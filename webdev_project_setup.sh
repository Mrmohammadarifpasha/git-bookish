#!/bin/bash

# Define departments and sub-directories
departments=("Frontend" "Backend")
subdirs=("html" "css")

# Sample HTML and CSS content
html_template='<!DOCTYPE html>
<html>
<head>
  <title>Sample Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Hello from HTML file</h1>
</body>
</html>'

css_template='/* Basic Style */
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  color: #333;
}'

# Create structure
for dept in "${departments[@]}"; do
    mkdir -p "$dept"
    echo "Created department: $dept"

    for sub in "${subdirs[@]}"; do
        mkdir -p "$dept/$sub"
        echo "  Created sub-directory: $dept/$sub"

        for i in {1..5}; do
            if [[ "$sub" == "html" ]]; then
                file="$dept/$sub/page${i}.html"
                echo "$html_template" > "$file"
            else
                file="$dept/$sub/style${i}.css"
                echo "$css_template" > "$file"
            fi
            echo "    Created file: $file"
        done
    done
done

echo -e "\n✅ Web development project structure setup complete."

