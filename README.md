# Jenkins Git Lab Repo

This small sample repo is meant for Lecture 7.

## Purpose

Use this folder as the source repository for a first Jenkins pipeline.

The repo includes:

- `Jenkinsfile` for the pipeline definition
- `app.sh` for a simple script the pipeline can run

## Suggested Git flow

```bash
git init
git branch -M main
git add .
git commit -m "Initial Jenkins lab"
git remote add origin <your-github-repo-url>
git push -u origin main
```

After that, create a Jenkins Pipeline job and choose:

- Definition: `Pipeline script from SCM`
- SCM: `Git`
- Script Path: `Jenkinsfile`

## What the pipeline does

1. prints the workspace path and file list
2. makes `app.sh` executable
3. runs `app.sh`
4. archives `build-output.txt`

## Expected result

If the build is successful, Jenkins should show:

- green build status
- console output from the script
- one archived artifact named `build-output.txt`
# Jenkins Git Lab

This small folder is the sample repo for Lecture 7.

## Lab goal

Turn this folder into a Git repository, make at least one commit, push it to a Git server that Jenkins can access, and then create a Jenkins Pipeline job that reads the `Jenkinsfile` from the repo.

## Files in this folder

- `Jenkinsfile` — the declarative pipeline definition
- `app.sh` — the small script the pipeline runs

## Suggested student flow

```bash
cd jenkins-git-lab
git init
git add .
git commit -m "Add Jenkins lab files"
```

Then push the repo to GitHub or another reachable Git server.

## Jenkins job settings

In Jenkins:

1. Create a new item and choose `Pipeline`.
2. Under Pipeline, choose `Pipeline script from SCM`.
3. Choose `Git`.
4. Paste the repository URL.
5. Use the correct branch name.
6. Keep the script path as `Jenkinsfile`.
7. Save and click `Build Now`.

## Expected output

The build should:

- print workspace details
- run `app.sh`
- generate `build-output.txt`
- show the file content in the console
- archive `build-output.txt`

## If Git hosting is blocked

Use this folder as the reference for an inline fallback pipeline, but the main lab goal is still Git integration.
