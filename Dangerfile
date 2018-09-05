# Env
working_dir = Dir.pwd
xc_project = 'ScrollViewLayout.xcodeproj'
test_scheme = 'ScrollViewLayout'

# Start message
start_time = Time.now
message("#{`whoami`.strip} started Danger at #{start_time}")

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress", sticky: true) if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR", sticky: true) if git.lines_of_code > 1000

# Only accept PRs to the master branch
fail("Please re-submit this PR to master.", sticky: true) if github.branch_for_base != "master"

# Ensure that all PRs have an assignee
warn("This PR does not have any assignees yet.", sticky: true) unless github.pr_json["assignee"]

# Generate code ceoverage report
xcov.report(
  project: File.join(working_dir, xc_project),
  scheme: test_scheme
)

# Done message
seconds_elapsed = ((Time.now - start_time) * 1000.0).to_i / 1000.0
message("Danger finished after #{seconds_elapsed}s")
