# Simple Lightweight FullStack Demo
SpringBoot, Freemarker, htmx, purecss, esbuild

## Requirements
1. npm
2. java

## Setup
```bash
npm i
```

## Running
You don't need three terminals - but this allows a full refresh without adding any extra tooling

### Terminal 1
Run the `esbuild` build anytime a js or css file changes

```bash
npm run build:watch
```

### Terminal 2
Update `freemarker` files on change

```bash
./gradlew -t processResources
```

### Terminal 3
Serve the content on `8080`

```bash
./gradlew bootRun
```

Navigate to 

http://localhost:8080