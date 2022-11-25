# bundlename

This action take the last ID commit followed by the comment. Clean the result-string and create a string for use it, for example, as a name of a release.

## How to use it

Create a YML with a job with this


```
jobs:
  yourjob:
    runs-on: ubuntu-latest
    name: JobName
    steps:
      - uses: actions/checkout@v3
      - uses: <user-repo>/<repo-name>@master
        id: stepbundle
      - run: echo "${{ steps.stepbundle.outputs.BUNDLE }}"
        id: result
        shell: bash
```
  
The step 'result', contains an echo with the result of the action

In this case, here, this repo, is
```
      - uses: QuiqueBarberan/bundlename@master
```

## Example

ID COMMIT: 1Q2W3E4R
COMMIT COMMENT: Fixing big problem
RESULT: 1Q2W3E4R-Fixing-big-problem
