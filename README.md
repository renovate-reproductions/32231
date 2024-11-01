# renovate/renovate issue 32231

## Current behavior

Currently, if `branchNameStrict` is set to `true`, the documentation
indicates that it *should* get rid of all special characters in the branch
name. This appears to be the intended behavior, looking at the discussions
behind the addition of this feature.

However, in reality, if you have something like `additionalBranchPrefix`
set to `{{packageFileDir}}-`. this will add slashes to the branch name
which are *not* removed by the `branchNameStrict` option; you'll end up
with a branch like `renovate/modules/foo-package-2-x`.

## Expected behavior

Optimally, `branchNameStrict` being set to `true` would remove *all*
special characters from the branches. At the very least, there should be
clearly documented way to have branch names contain only alphanumeric
and hyphen characters. If, as the discussion in the issue indicates, it
would be a problem for the `branchPrefix` to be altered by the
`branchNameStrict` parameter, then it should be clearly explained in
the documentation that in order to get rid of *all* special characters,
you must both set `branchNameStrict` (or accept the current `true`
default value) *and* set `branchPrefix` to something not containing
any special characters.

## Link to the Renovate issue or Discussion

<https://github.com/renovatebot/renovate/discussions/32231>
