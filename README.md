# bundlename

How to use it

Create a YML with a job with this


```
jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: A job to say hello
    steps:
      - uses: actions/checkout@v3
      - uses: <user-repo>/<repo-name>@master
        id: stepbundle
      - run: echo "${{ steps.stepbundle.outputs.BUNDLE }}"
        shell: bash
```
  
It is necessary to assign an id to the action-step.
After use the action, it is possible to get the output 'BUNDLE' of the action like in the example
