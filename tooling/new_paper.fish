#!/usr/bin/env fish

if test (count $argv) -lt 1
    echo "Usage: new_paper.fish <paper_slug>"
    exit 1
end

set paper_slug $argv[1]
set base_dir papers/$paper_slug

if test -d $base_dir
    echo "Paper '$paper_slug' already exists."
    exit 1
end

echo "Creating paper structure for '$paper_slug'..."

mkdir -p $base_dir/{notes,diagrams,implementation/src,implementation/experiments,blogs}

touch $base_dir/README.md
touch $base_dir/paper.pdf

touch $base_dir/notes/00_intake.md
touch $base_dir/notes/01_intuition.md
touch $base_dir/notes/02_mechanics.md
touch $base_dir/notes/03_gaps_and_assumptions.md
touch $base_dir/notes/04_implementation_friction.md

touch $base_dir/implementation/PLAN.md

echo "Paper structure created at $base_dir"

