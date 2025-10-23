# Keep Fit App

A full-stack TypeScript fitness tracking application built with the T3 stack (React, tRPC, Firebase) organized as a monorepo.

## 🏗️ Architecture

- **Frontend**: React + Vite + TypeScript
- **UI**: shadcn/ui + Tailwind CSS
- **State Management**: TanStack Query
- **Backend**: Firebase Cloud Functions (Gen 2)
- **API**: tRPC for type-safe client-server communication
- **Database**: Firebase Firestore
- **Monorepo**: PNPM workspaces + Turborepo

## 📁 Project Structure

```
├── apps/
│   └── web/                 # React frontend
├── functions/               # Firebase Cloud Functions + tRPC
├── packages/
│   └── shared/              # Shared Zod schemas and types
├── docs/                    # Project documentation
└── firebase.json           # Firebase configuration
```

## 🚀 Getting Started

### Prerequisites

- Node.js 18+
- PNPM 8+
- Firebase CLI

### Installation

1. **Install dependencies:**
   ```bash
   pnpm install
   ```

2. **Set up Firebase:**
   ```bash
   firebase login
   firebase init
   ```

3. **Configure environment:**
   ```bash
   cp .env.example .env
   # Edit .env with your Firebase project details
   ```

4. **Start development servers:**
   ```bash
   # Start Firebase emulators
   firebase emulators:start
   
   # In another terminal, start the frontend
   pnpm dev
   ```

### Available Scripts

- `pnpm dev` - Start all development servers
- `pnpm build` - Build all packages
- `pnpm lint` - Lint all packages
- `pnpm typecheck` - Type check all packages
- `pnpm test` - Run tests

## 🎯 Features

### Phase 1: Foundation & Authentication ✅
- [x] Monorepo setup with PNPM workspaces
- [x] React + Vite frontend
- [x] Firebase Cloud Functions backend
- [x] tRPC API layer
- [x] Authentication system
- [x] shadcn/ui components

### Phase 2: Vitals Tracking (Current)
- [x] Weight logging schema and API
- [x] Weight logging form component
- [ ] Blood pressure tracking
- [ ] Sleep tracking
- [ ] Heart rate tracking
- [ ] Dashboard with charts

### Phase 3: Workout Logging
- [ ] Workout data modeling
- [ ] Workout logging API
- [ ] Complex workout logger UI
- [ ] Workout history and PRs

### Phase 4: Polish & Deployment
- [ ] Accessibility improvements
- [ ] End-to-end testing
- [ ] Internationalization
- [ ] CI/CD pipeline
- [ ] Production deployment

## 🔧 Development

### Adding New Features

1. **Define schemas** in `packages/shared/src/schemas.ts`
2. **Create tRPC procedures** in `functions/src/routers/`
3. **Add client hooks** in `apps/web/src/hooks/`
4. **Build UI components** in `apps/web/src/components/`

### Code Style

- TypeScript strict mode
- ESLint + Prettier
- Conventional commits
- Zod for validation

## 📝 License

MIT License - see LICENSE file for details.
