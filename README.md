# mimejosci-platform
Repo for mimejosci platform


Repo structure:

mimejosci-platform/ \
├── services/ \
│   └── template/ \
│       ├── src/ \
│       │   └── server.js \
│       ├── package.json \
│       ├── Dockerfile \
│       └── ... (additional backend files as needed) \
├── frontend/ \
│   ├── src/ \
│   │   ├── App.tsx \
│   │   └── ... (other React source files) \
│   ├── public/ \
│   ├── package.json \
│   ├── tsconfig.json \
│   ├── Dockerfile \
│   └── ... (additional frontend files as needed) \
├── shared/ \
│   └── (empty for now, reserved for shared utilities or libraries) \
├── infra/ \
│   └── (empty for now, reserved for infrastructure code like AWS CDK scripts) \
├── docs/ \
│   └── README.md (project-specific documentation) \
├── .gitignore \
└── README.md (top-level project overview) \

Directory Breakdown:

services/: Contains subdirectories for each microservice. Initially, it includes a template/ directory to house the basic Node.js/Express backend code, serving as a starting point or template for future microservices. \
frontend/: Holds the React frontend application, including its source code, configuration files, and Dockerfile. \
shared/: Reserved for shared libraries, utilities, or configurations (e.g., database helpers or authentication middleware) that multiple services or the frontend might use. It’s empty initially but included for scalability. \
infra/: Designated for infrastructure-as-code files (e.g., AWS CDK or CloudFormation scripts), crucial for a SAAS platform managing tenant-specific resources. It’s empty for now but anticipates future needs. \
docs/: Stores project documentation, starting with a README specific to detailed guides or notes. \
.gitignore: Ignores common directories and files (e.g., node_modules/, build/) to keep the repository clean. \
README.md: A top-level file providing an overview of the project. \
