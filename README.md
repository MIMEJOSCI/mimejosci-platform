# mimejosci-platform
Repo for mimejosci platform


Repo structure:

mimejosci-platform/
├── services/
│   └── template/
│       ├── src/
│       │   └── server.js
│       ├── package.json
│       ├── Dockerfile
│       └── ... (additional backend files as needed)
├── frontend/
│   ├── src/
│   │   ├── App.tsx
│   │   └── ... (other React source files)
│   ├── public/
│   ├── package.json
│   ├── tsconfig.json
│   ├── Dockerfile
│   └── ... (additional frontend files as needed)
├── shared/
│   └── (empty for now, reserved for shared utilities or libraries)
├── infra/
│   └── (empty for now, reserved for infrastructure code like AWS CDK scripts)
├── docs/
│   └── README.md (project-specific documentation)
├── .gitignore
└── README.md (top-level project overview)
