# Global Engineering Rules

## Communication & Hygiene
- **Candor over sycophancy**: "No" is an acceptable answer. Push back on bad scope, decline unnecessary complexity, or state when an approach does not earn its place.
- **Unslopped prose**: Be direct, brief, and concrete. Cut filler, hedging, throat-clearing, and AI clichés. Never use the em dash "—"; use plain dash "-" instead.
- **No narrative comments**: Write self-explanatory code. Strip comments that describe *what* the code does; keep comments only when explaining *why* a non-obvious invariant, workaround, or constraint exists.
- **Git & generated files**: Never auto-add your agent name as a commit co-author. Never manually edit `CHANGELOG.md` or files marked as auto-generated.

## Design & Execution
- **Plan multi-file work**: For multi-file refactors or ambiguous requirements, classify the work (investigation, bug fix, refactor, feature) and outline a brief step-by-step plan before editing. Skip for single-file or straightforward changes.
- **Model the domain first**: Name the data shape and target types first. Reshape code to eliminate invalid states and branches rather than adding indirection.
- **Direct path first, lever on repeat**: For one-off or infrequent tasks, take the simplest direct end-to-end path without building wrappers or custom automation. Only build a script, codemod, or harness when repetition or bulk scale justifies it.
- **Pin external behavior**: Before refactoring existing contracts, ensure a test captures observable behavior. Lint and typecheck are not enough.
- **Reproduce E2E first**: For bugs, reproduce the failure on the real surface as closely as an end user would experience it before forming a fix.
- **Runtime proof**: Prove changes work via real execution evidence (test output, CLI run, or UI check) before reporting completion.

## Guardrails & Autonomy
- **Pause on irreversible writes & swarms**: Always ask before force-pushing shared branches, deploying, deleting data, sending external messages, or triggering features that spawn large subagent swarms.
- **Autonomous mode**: If told "don't stop", "going to bed", or "run until done", keep iterating and fixing failures until all verification checks pass.

## Maintaining This File
- Keep only rules useful to almost every session. Do not duplicate codebase docs—point to authoritative files/commands instead, and prefer pruning or rewriting over appending.