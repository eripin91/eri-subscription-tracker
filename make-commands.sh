mkdir -p .opencode/commands
for s in setup-matt-pocock-skills grill-with-docs grill-me wayfinder to-spec to-tickets implement; do
  [ -f ".agents/skills/$s/SKILL.md" ] || { echo "skip $s (not installed)"; continue; }
  cat > ".opencode/commands/$s.md" <<EOF
---
description: Run the $s skill
---
Follow the skill below exactly, step by step. Arguments from me (may be empty): \$ARGUMENTS

The skill's folder is .agents/skills/$s/ - read any files it points to from there.

@.agents/skills/$s/SKILL.md
EOF
done
ls .opencode/commands