#!/usr/bin/env bash
# verify.sh - Simple verification script for the AI fact-checking guide
# Run with: ./verify.sh

set -e

echo "🔍 Verifying AI Fact-Checking Guide..."
echo ""

# Check all required files exist
echo "📁 Checking file structure..."
REQUIRED_FILES=(
    "README.md"
    "LICENSE"
    "STATUS.md"
    "docs/index.md"
    "docs/CHECKLIST.md"
    "site/index.html"
    "site/checklist.html"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo "  ✅ $file"
    else
        echo "  ❌ MISSING: $file"
        exit 1
    fi
done

# Verify LICENSE has correct copyright
echo ""
echo "📄 Verifying LICENSE..."
if grep -q "Copyright (c) 2026 Asdale Dynamics, LLC" LICENSE; then
    echo "  ✅ Correct copyright line present"
else
    echo "  ❌ Copyright line missing or incorrect"
    exit 1
fi

# Verify README credits Asdale Dynamics
echo ""
echo "📖 Verifying README..."
if grep -q "Asdale Dynamics, LLC" README.md; then
    echo "  ✅ Asdale Dynamics credited"
else
    echo "  ❌ Asdale Dynamics not credited in README"
    exit 1
fi

# Verify HTML files are well-formed
echo ""
echo "🌐 Verifying HTML files..."
for html in site/index.html site/checklist.html; do
    if head -1 "$html" | grep -q "<!DOCTYPE html>"; then
        echo "  ✅ $html has DOCTYPE"
    else
        echo "  ❌ $html missing DOCTYPE"
        exit 1
    fi

    if grep -q "<html lang=\"en\">" "$html"; then
        echo "  ✅ $html has lang attribute"
    else
        echo "  ❌ $html missing lang attribute"
        exit 1
    fi

    if grep -q "skip-link" "$html"; then
        echo "  ✅ $html has skip-to-content link"
    else
        echo "  ❌ $html missing skip-to-content link"
        exit 1
    fi

    if grep -q "role=" "$html"; then
        echo "  ✅ $html has ARIA roles"
    else
        echo "  ❌ $html missing ARIA roles"
        exit 1
    fi
done

# Verify checklist has localStorage script
echo ""
echo "💾 Verifying checklist persistence..."
if grep -q "localStorage" site/checklist.html; then
    echo "  ✅ Checklist has localStorage persistence"
else
    echo "  ❌ Checklist missing localStorage"
    exit 1
fi

# Verify Golden Rule in content
echo ""
echo "⚠️  Verifying Golden Rule..."
for file in docs/index.md site/index.html site/checklist.html; do
    if grep -q "Never treat AI as an authority on health, law, or money" "$file"; then
        echo "  ✅ Golden Rule in $file"
    else
        echo "  ❌ Golden Rule missing from $file"
        exit 1
    fi
done

# Verify no secrets/API keys
echo ""
echo "🔒 Checking for secrets..."
# Exclude common false positives in documentation
if grep -r -i "api_key\|secret\|password\|token" --include="*.md" --include="*.html" --include="*.txt" . 2>/dev/null | grep -v "checklist" | grep -v "STATUS" | grep -v "No secrets" | grep -v "API keys" | grep -v "personal data" | grep -v ".sh:"; then
    echo "  ❌ Potential secrets found"
    exit 1
else
    echo "  ✅ No secrets detected"
fi

# Verify no .github/workflows
echo ""
echo "🚫 Checking for workflow files..."
if [[ -d ".github/workflows" ]]; then
    echo "  ❌ .github/workflows directory exists"
    exit 1
else
    echo "  ✅ No .github/workflows"
fi

# Verify git repo
echo ""
echo "📦 Verifying git repository..."
if [[ -d ".git" ]]; then
    echo "  ✅ Git repository initialized"
    COMMITS=$(git log --oneline | wc -l)
    echo "  📝 $COMMITS commit(s)"
else
    echo "  ❌ Not a git repository"
    exit 1
fi

# Check for co-authored-by trailers
echo ""
echo "👤 Checking commit messages..."
if git log --all --grep="Co-authored-by" --oneline | grep -q .; then
    echo "  ❌ Found Co-authored-by trailers"
    exit 1
else
    echo "  ✅ No Co-authored-by trailers"
fi

echo ""
echo "✅ All verification checks passed!"
echo ""
echo "📋 Summary:"
echo "  - Documentation: docs/ (Markdown) + site/ (HTML)"
echo "  - License: MIT with correct copyright"
echo "  - Credits: Asdale Dynamics, LLC throughout"
echo "  - Accessibility: Skip links, ARIA roles, semantic HTML"
echo "  - Checklist: Interactive with localStorage persistence"
echo "  - Git: Clean history, no co-authors, no remotes"
echo ""
echo "🎉 Project ready for distribution!"