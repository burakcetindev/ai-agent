# Considerations

## Why This Design
- Keeps global reusable rules in one place
- Makes project bootstrap deterministic
- Prevents accidental rule-file commits via `.gitignore`

## Tradeoffs
- Hidden `.ai-agent` folder may be overlooked by humans
- Requires one-time command installation

## Limitations
- Current bootstrap is shell-oriented
- Assumes Unix-like environment

## Improvements
- Add Windows PowerShell bootstrap variant
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
echo "Run: ./scripts/install_ai_command.sh"
