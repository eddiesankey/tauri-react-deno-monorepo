# tauri-react-deno-monorepo
A template for a Tauri application with the following tech stack

- Typescript
- React 
- Vite 
- Deno 

with the typical `crates` monorepo structure for the Rust backend.

Prerequisites:

- [Rust](https://www.rust-lang.org/)
- [Deno](https://deno.land/)
- [Tauri](https://v2.tauri.app/start/prerequisites/)

## Dev

Clone then run:

```
    ./replace.sh <new project name>
```
To replace istances of trdm in the project structure and relevant files

Finally  

```
    deno install
    deno task tauri dev
```