#!/usr/bin/env fish

if test (count $argv) -lt 1
    echo "Usage: check_paper_health.fish <paper_slug>"
    exit 1
end

set paper_dir papers/$argv[1]

if not test -d $paper_dir
    echo "Paper '$argv[1]' not found."
    exit 1
end

echo "Checking paper health for '$argv[1]'..."

set required_files \
    README.md \
    paper.pdf \
    notes/00_intake.md \
    notes/01_intuition.md \
    notes/02_mechanics.md \
    implementation/PLAN.md

for f in $required_files
    if not test -f $paper_dir/$f
        echo "❌ Missing: $f"
    else
        echo "✅ Found:   $f"
    end
end

