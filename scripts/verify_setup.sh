#!/bin/bash

# Portfolio Setup Verification Script
# This script verifies your Ruby 3.4.0+ setup is correct

echo "🔍 JEKYLL PORTFOLIO SETUP VERIFICATION"
echo "========================================"
echo ""

# Check Ruby version
echo "1️⃣  Checking Ruby version..."
RUBY_VERSION=$(ruby -v)
echo "   $RUBY_VERSION"
if [[ $RUBY_VERSION == *"3.4"* ]] || [[ $RUBY_VERSION == *"3.5"* ]]; then
    echo "   ✅ Ruby 3.4.0+ detected - needs extra gems"
else
    echo "   ⚠️  Ruby version may need attention"
fi
echo ""

# Check if Gemfile exists
echo "2️⃣  Checking Gemfile..."
if [ -f "Gemfile" ]; then
    echo "   ✅ Gemfile found"
    echo "   Checking for required gems..."

    if grep -q "gem \"csv\"" Gemfile; then
        echo "   ✅ csv gem found"
    else
        echo "   ❌ csv gem NOT found"
    fi

    if grep -q "gem \"base64\"" Gemfile; then
        echo "   ✅ base64 gem found"
    else
        echo "   ❌ base64 gem NOT found"
    fi
else
    echo "   ❌ Gemfile not found"
fi
echo ""

# Check if bundler is installed
echo "3️⃣  Checking Bundler..."
if command -v bundle &> /dev/null; then
    echo "   ✅ Bundler installed"
    BUNDLE_VERSION=$(bundle --version)
    echo "   $BUNDLE_VERSION"
else
    echo "   ❌ Bundler not found"
fi
echo ""

# Check if Jekyll can load
echo "4️⃣  Testing Jekyll..."
if bundle exec jekyll --version 2>&1 | grep -q "jekyll"; then
    JEKYLL_VERSION=$(bundle exec jekyll --version 2>&1 | head -1)
    echo "   ✅ Jekyll works!"
    echo "   $JEKYLL_VERSION"
else
    echo "   ❌ Jekyll failed to load"
    echo "   Try: bundle update"
fi
echo ""

# Check configuration
echo "5️⃣  Checking configuration files..."
if [ -f "_config.yml" ]; then
    echo "   ✅ _config.yml found"
else
    echo "   ❌ _config.yml not found"
fi

if [ -d "_posts" ]; then
    POST_COUNT=$(find _posts -name "*.md" 2>/dev/null | wc -l)
    echo "   ✅ _posts/ directory found ($POST_COUNT posts)"
else
    echo "   ⚠️  _posts/ directory not found"
fi

if [ -d "_learning" ]; then
    LEARNING_COUNT=$(find _learning -name "*.md" 2>/dev/null | wc -l)
    echo "   ✅ _learning/ directory found ($LEARNING_COUNT entries)"
else
    echo "   ⚠️  _learning/ directory not found"
fi
echo ""

# Final status
echo "========================================"
echo "✅ VERIFICATION COMPLETE"
echo ""
echo "🚀 Next steps:"
echo "   1. Run: bundle update"
echo "   2. Run: bundle exec jekyll serve"
echo "   3. Visit: http://localhost:4000"
echo ""
echo "📖 For help, see: TROUBLESHOOTING.md"
echo "========================================"
