# Keep Fit App - Setup Script
# Run this after installing Node.js and pnpm

Write-Host "🚀 Setting up Keep Fit App..." -ForegroundColor Green

# Check if Node.js is installed
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js version: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js is not installed. Please install Node.js from https://nodejs.org/" -ForegroundColor Red
    exit 1
}

# Check if pnpm is installed
try {
    $pnpmVersion = pnpm --version
    Write-Host "✅ pnpm version: $pnpmVersion" -ForegroundColor Green
} catch {
    Write-Host "📦 Installing pnpm..." -ForegroundColor Yellow
    npm install -g pnpm
}

# Install dependencies
Write-Host "📦 Installing project dependencies..." -ForegroundColor Yellow
pnpm install

# Check if Firebase CLI is installed
try {
    $firebaseVersion = firebase --version
    Write-Host "✅ Firebase CLI version: $firebaseVersion" -ForegroundColor Green
} catch {
    Write-Host "📦 Installing Firebase CLI..." -ForegroundColor Yellow
    npm install -g firebase-tools
}

Write-Host "🎉 Setup complete! Next steps:" -ForegroundColor Green
Write-Host "1. Configure Firebase: firebase login && firebase init" -ForegroundColor Cyan
Write-Host "2. Start development: pnpm dev" -ForegroundColor Cyan
Write-Host "3. Open http://localhost:5173 in your browser" -ForegroundColor Cyan
